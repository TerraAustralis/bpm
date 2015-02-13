*Q2GemStone
ifNotEmpty: notEmptyBlock ifEmpty: emptyBlock 
	^ self size == 0
		ifTrue: emptyBlock
		ifFalse: [notEmptyBlock valueWithPossibleArgument: self]