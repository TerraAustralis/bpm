building
removeComponent: aComponent
	"Remove a component and its value in the cache."

	cache removeAt: (children indexOf: aComponent).
	^children remove: aComponent