html-forms
postForm: action
	"Start a POST form with an action url."

	^self addForm: (HVHtmlForm postAction: action)