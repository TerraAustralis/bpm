html-forms
postForm
	"Start a POST form with an action url that is the same as this request."

	^self addForm: (HVHtmlForm postAction: request url)