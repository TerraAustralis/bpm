loading
load
	"Load the object with updates if we have a loader and it is time to load.
	Otherwise we at least make sure the shared collection is up to date."

	(loader notNil and: [self timeToLoad]) ifTrue: [loader load: self].
	self objectsChanged