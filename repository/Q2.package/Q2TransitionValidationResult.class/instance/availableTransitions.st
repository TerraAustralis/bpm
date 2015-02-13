queries
availableTransitions
	"If there are general denials then the valid transitions are still not available."

	^denials ifEmpty: [validTransitions] ifNotEmpty: [OrderedCollection new]