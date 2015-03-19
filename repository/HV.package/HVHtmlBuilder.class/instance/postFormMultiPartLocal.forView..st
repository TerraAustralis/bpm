html-forms
postFormMultiPartLocal: aString forView: aView
	"Start a POST form with an action url that is
	based on the view and with encoding as multi part."

	^self addForm: (HVHtmlForm postAction: (aView originalUrlFor: aString) enctype: 'multipart/form-data')