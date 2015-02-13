accessing
from: anObject
	anObject = to ifTrue: [self error: 'Transitions to self not allowed.'].
	from ifNotNil: [from removeTransition: self].
	from := anObject.
	from addTransition: self