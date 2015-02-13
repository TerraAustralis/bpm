accessing
to: anObject
	anObject = from ifTrue: [self error: 'Transitions to self not allowed.'].
	to ifNotNil: [to removeTransition: self].
	to := anObject.
	to addTransition: self