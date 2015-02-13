services
nextTokenFrom: start direction: dir
	"Simple token-finder for compiler automated corrections."

	| loc |
	loc := start + dir.
	[(loc between: 1 and: code size) and: [(code at: loc) isSeparator]]
		whileTrue: [loc := loc + dir].
	^ loc