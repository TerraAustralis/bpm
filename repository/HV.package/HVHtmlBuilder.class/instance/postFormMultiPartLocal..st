html-forms
postFormMultiPartLocal: aString
	"Start a POST form with an action url that is
	based on the view and with encoding as multi part."

	^self postFormMultiPartLocal: aString forView: view