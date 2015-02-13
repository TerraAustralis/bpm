as yet unclassified
refreshCache
	"Reload the value from the model object.
	Create our children components from the cache."

	super refreshCache.
	cache ifNotNil: [
		children _ OrderedCollection new.
		cache do: [:value | self addComponentWithCache: value]]