loading
singleObjects: aCollection
	"Simple instantiation when each custom object is just a single object
	and most often just a String. The collection should be in the correct order."

	aCollection do: [:obj |
		self addObject: (Q2CustomObject values: (Array with: obj))].
	self objectsChanged