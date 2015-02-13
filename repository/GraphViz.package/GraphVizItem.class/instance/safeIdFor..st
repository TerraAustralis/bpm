accessing
safeIdFor: anObject

	| hasWhiteSpace firstCharIsDigit |
	anObject isNumber ifTrue: [^ GraphViz numberToString: anObject].
	anObject isString ifTrue:
		[(anObject first = $< and: [anObject last = $>]) ifTrue: [^ anObject].
		(anObject first = $" and: [anObject last = $"]) ifTrue: [^ anObject].
		
		hasWhiteSpace _ GraphViz stringContainsSeparator: anObject.
		hasWhiteSpace ifTrue: [^ '"', anObject, '"'].
		
		firstCharIsDigit _ anObject first isDigit.
		firstCharIsDigit ifTrue: [^ '"', anObject, '"'].

		anObject do: [:char | (char isAlphaNumeric or: [char = $_]) ifFalse: [^ '"', anObject, '"']]].
	
	^ anObject asString