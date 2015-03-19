processing
findCorrespondingEndIn: template startingAt: lastPos
	"Since macros can nest - we need to find corresponding end."

	| endPos startPos pos nestLevel |
	endPos := template findString: end startingAt: lastPos.
	"Was there a start before it? If not we are done."
	startPos := template findString: start startingAt: lastPos.
	(startPos = 0 or: [startPos > endPos]) ifTrue: [^endPos].
	
	"Ok, it is nested, need to unwind enclosed pairs"
	pos := lastPos+1.
	nestLevel := 1.
	[ pos <= template size ] whileTrue: [
		(template findString: start startingAt: pos) = pos ifTrue: [ nestLevel := nestLevel + 1 ].
		(template findString: end startingAt: pos) = pos ifTrue: [ nestLevel := nestLevel - 1 ].
		nestLevel = 0 ifTrue: [ ^pos ].
		pos := pos + 1].
	self error: 'Corresponding end marker not found when processing macros'