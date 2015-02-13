evaluating
signal
	"Only signal if someone can receive it and if it was someone else that did it."

	(oldResponsible ~= self currentUser and: [oldResponsible isNobody not])
		ifTrue: [super signal]