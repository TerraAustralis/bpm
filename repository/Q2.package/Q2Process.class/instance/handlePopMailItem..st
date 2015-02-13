email
handlePopMailItem: mailItem
	"First try to create a note based on if there is an embedded reference in the
	subject line. If that fails we create a case based on the first TO address."

	| popReceiver firstTo |

	"Try to create the note."
	(self createNoteFrom: mailItem) ifFalse: [
		firstTo _ mailItem firstTo asLowercase.

		"Do we have a matching popReceiver for this mail?
		If so, create case - otherwise return false."

		popReceiver := popReceivers detect: [:each | each email = firstTo] ifNone: [^ false].
		self createCaseFrom: mailItem for: popReceiver].
	^ true.