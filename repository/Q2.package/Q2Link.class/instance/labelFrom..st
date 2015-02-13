rendering
labelFrom: aCase
	"Give the correct label - the name or reverseName of my type."
	
	^from == aCase ifTrue: [type name] ifFalse: [type reverseName]