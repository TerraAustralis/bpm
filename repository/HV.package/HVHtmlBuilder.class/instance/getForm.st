html-forms
getForm
	"Start a GET form that will return to the same url as this request."

	^self addForm: (HVHtmlForm getAction: request url)