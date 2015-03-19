html-forms-queries
submitted: aString
	"Low level access - is a certain field available?
	To check for button presses, keep the button and
	use #ifPressed: or #pressed."

	^(fields detect: [:oc | oc includes: aString] ifNone: [nil]) notNil