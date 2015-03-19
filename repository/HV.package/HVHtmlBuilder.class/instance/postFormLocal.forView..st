html-forms
postFormLocal: aString forView: aView
	"Start a POST form with an action url based on the local view."

	^self addForm: (HVHtmlForm postAction: (aView originalUrlFor: aString))