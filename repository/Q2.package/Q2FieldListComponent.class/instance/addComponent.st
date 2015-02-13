building
addComponent
	"Add a new 'row' in the list. We both add a new value
	in the cache and a new component with that cache value."

	^self addComponentWithCache: (
		self addToCache: (field field defaultValueForFieldComponent: self))