testing
validName: aString
	"It is a valid name if it is strictly an integer or
	an alphabetic string followed by an integer."

	| firstDigit |
	firstDigit := false.
	aString do: [:c |
		firstDigit
			ifTrue: [
				c isDigit ifFalse: [^false]]
			ifFalse: [
				c isDigit
					ifTrue: [firstDigit := true]
					ifFalse: [c isLetter ifFalse: [^false]]]].
	^aString size > 0 "the empty string is not a valid name :)"