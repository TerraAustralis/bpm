layout
tokenizeLine: line

	| tokens tokenSoFar insideQuote |
	tokens _ OrderedCollection new.
	tokenSoFar _ ''.
	insideQuote _ false.
	
	line do:
		[:char |
		char = $" ifTrue: [insideQuote _ insideQuote not].
		tokenSoFar _ (char = Character space and: [insideQuote not])
			ifTrue: [tokenSoFar isEmpty ifFalse: [tokens add: tokenSoFar]. String new]
			ifFalse: [tokenSoFar, char asString]].
	
	tokenSoFar isEmpty ifFalse: [tokens add: tokenSoFar].
	^ tokens collect: [:each | (each beginsWith: '"') ifTrue: [each allButFirst allButLast] ifFalse: [each]]