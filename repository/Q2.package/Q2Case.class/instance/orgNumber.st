fortum
orgNumber
	"This is a hack, I am not sure how to create Magma indexes
	that do not use an accessor for its attribute."

	(self hasFieldNamed: #orgNumber)
		ifTrue: [^self atField: (self fieldNamed: #orgNumber)]
		ifFalse: [^nil]