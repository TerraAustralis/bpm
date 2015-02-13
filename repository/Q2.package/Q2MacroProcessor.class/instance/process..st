processing
process: template
	"For all substrings enclosed within the end/start markers,
	send #macro: with the enclosed string to the model for expansion.
	This is recursively, inner first Which means that:
	   ....[some macro with [an inner macro]]...
	would lead to:
		model macro: 'an inner macro'; macro: 'some macro with xxx'
	(xxx is the presumed result of expanding the first inner macro)"

	| lastPos pos result content continue |
	(template includesSubString: start) ifFalse:[^template].
	continue _ true.
	^String streamContents: [:stream |
		lastPos _ 1.
		[continue and: [
			pos _ template findString: start startingAt: lastPos.
			pos ~= 0]] whileTrue: [
			stream nextPutAll: (template copyFrom: lastPos to: pos - 1).
			lastPos _ pos + start size.
			pos _ self findCorrespondingEndIn: template startingAt: lastPos.
			pos = 0 ifTrue: [
				lastPos _ pos.
				continue _ false
			] ifFalse: [
				content _ template copyFrom: lastPos to: pos - 1.
				result _ (self expandMacro: (recurse ifTrue: [self process: content] ifFalse: [content])).
				stream nextPutAll: (deep ifTrue: [self process: result] ifFalse: [result]).
				lastPos _ pos + end size]].
		stream nextPutAll: (template copyFrom: lastPos to: template size)]