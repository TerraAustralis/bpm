evaluating
signal
	"Only signal if someone can receive it and if it was someone else that did it."

	(newResponsible ~= self currentUser and: [newResponsible isNobody not])
		ifTrue: [super signal]