*q2-extensions
utf8ToIndexCompatible
	"Convert from UTF-8 to iso-8859-1 because swish-e can only index this format. The conversion is not in the character domain, but in the byte domain."
	"UTF-8 uses 0-127 and 194-244 for the first byte, and 128-191 for every other byte for it's characters"
	"ISO-8859-1 uses 32-126 and 160-255"
	"so the mapping for the first byte goes as:"
	"0-126 -> 0-126"
	"127 -> 255"
	"194-244 194-244"
	"so the only mapping is 127 -> 255"
	"for the second, third and fourth bytes:"
	"128-191 -> 160-223"
	"so add 32 if the byte is between 128 and 191"
	"the result should be an array with iso-8859-1 compatible bytes (except for the 0-31 range but we don't care about that because those are not readable characters"

	| result nonFirstByteCount |
	result := WriteStream on: (String new: self size).
	nonFirstByteCount := 0.
	self do: [:c |
		nonFirstByteCount isZero 
			ifTrue: [
				c asciiValue >= 194 ifTrue: [ nonFirstByteCount := 1 ].
				c asciiValue >= 224 ifTrue: [ nonFirstByteCount := 2 ].
				c asciiValue >= 240 ifTrue: [ nonFirstByteCount := 3 ].
				c asciiValue = 127 
					ifTrue: [ result nextPut: 255 asCharacter ]
					ifFalse: [ result nextPut: c ] ]
			ifFalse: [
				result nextPut: (c asciiValue + 32) asCharacter.
				nonFirstByteCount := nonFirstByteCount - 1 ] ].
	^result contents.