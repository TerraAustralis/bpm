evaluating
signal
	"Only signal if someone can receive it and if it was someone else that did it."

	(self users anyOne ~= self currentUser and: [self users anyOne isNobody not])
		ifTrue: [super signal]