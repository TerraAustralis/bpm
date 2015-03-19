private
fixEms: aString
	"Resolve all the emphasizes. Double __ are turned into a single _.
	We ignore underscores within *-pairs."

	| start aLine end tokens inside zero |
	start := 1.
	zero := String with: (Character value: 0).
	tokens := aString findTokens: '*' keep: '*'.
	"We temporarily escape underscores within *-pairs as Character 0."
	inside := false.
	aLine := String streamContents: [:stream |
		tokens do: [:token |
			token = '*' ifTrue: [inside := inside not].
			stream nextPutAll: (
				inside
					ifFalse: [token]
					ifTrue: [token copyReplaceAll: '_' with: zero])]].
	[(start := aLine indexOfSubCollection: '_' startingAt: start ifAbsent: [0]) ~= 0
			and: [start < aLine size]]
		whileTrue:
			[(aLine at: start+1) = $_
				ifTrue: [aLine := aLine copyReplaceFrom: start 
								to: start+1 with: '_'.
						start := start + 1]
				ifFalse: [
					(end := aLine indexOfSubCollection: '_'
						startingAt: (start+1) ifAbsent: [0]) ~= 0
							ifTrue: [aLine := aLine copyReplaceFrom: start to: end
										with: ('<b>', (aLine copyFrom: start+1 to: end-1), '</b>')]
							ifFalse: [start := start + 1]]].
	"Revert escape of underscores within *-pairs."
	^aLine copyReplaceAll: zero with: '_'