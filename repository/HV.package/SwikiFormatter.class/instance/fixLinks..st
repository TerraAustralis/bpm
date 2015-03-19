private
fixLinks: aString
	"Resolve all the links. Double ** are turned into a single *."

	| start aLine end |
	start := 1.
	aLine := aString.
	[(start := aLine indexOfSubCollection: SpecialCharacterString startingAt: start ifAbsent: [0]) ~= 0
		and: [start < aLine size]]
	whileTrue:
		[(aLine at: start+1) = SpecialCharacter "Is it two asterisks in a row?"
			ifTrue: [aLine := aLine copyReplaceFrom: start 
								to: start+1 with: SpecialCharacterString.
					start:=start + 1]
			ifFalse: [
				(end := aLine indexOfSubCollection: SpecialCharacterString
						startingAt: (start+1) ifAbsent: [0]) ~= 0
					ifTrue: [aLine := aLine copyReplaceFrom: start to: end
							with: (self resolveLink: (aLine copyFrom: start+1 to: end-1))]
					ifFalse: [start := start + 1]]].
	^aLine