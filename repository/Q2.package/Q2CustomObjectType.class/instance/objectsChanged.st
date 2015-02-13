loading
objectsChanged
	"Make sure the shared collection is up to date
	and check if we should include nil."
	
	self class values: (objects collect: [:each | each searchString]) asSortedCollection for: self.
	self addNil