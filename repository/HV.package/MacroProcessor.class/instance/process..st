processing
process: template
	"For all substrings enclosed within the end/start markers,
	send #macro: with the enclosed string to the model for expansion.
	When #recurse is true we recursively process the enclosed strings
	before expanding them using #macro:. This leads to an inner first
	expansion, meaning that:
	
	   ....[some macro with [an inner macro]]...

	would lead to:

		model macro: 'an inner macro'; macro: 'some macro with xxx'

	(xxx is the presumed result of expanding the first inner macro)"

	| lastPos pos result content continue |
	(template includesSubString: start) ifFalse:[^template].
	continue := true.
	^String streamContents: [:stream |
		lastPos := 1.
		[continue and: [
			pos := template findString: start startingAt: lastPos.
			pos ~= 0]] whileTrue: [
			stream nextPutAll: (template copyFrom: lastPos to: pos - 1).
			lastPos := pos + start size.
			pos := self findCorrespondingEndIn: template startingAt: lastPos.
			pos = 0 ifTrue: [
				lastPos := pos.
				continue := false
			] ifFalse: [
				content := template copyFrom: lastPos to: pos - 1.
				result := (self expandMacro: (recurse ifTrue: [self process: content] ifFalse: [content])).
				stream nextPutAll: (deep ifTrue: [self process: result] ifFalse: [result]).
				lastPos := pos + end size]].
		stream nextPutAll: (template copyFrom: lastPos to: template size)]