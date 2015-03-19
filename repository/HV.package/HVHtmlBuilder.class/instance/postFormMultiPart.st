html-forms
postFormMultiPart
	"Start a POST form with an action url that is
	the same as this request and with encoding as multi part."

	^self addForm: (HVHtmlForm postAction: request url enctype: 'multipart/form-data')