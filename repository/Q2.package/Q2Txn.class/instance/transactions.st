static objects
transactions
	"Lazy initalization for the case when i have embedded txns"

	^transactions ifNil: [ transactions := OrderedCollection new ]