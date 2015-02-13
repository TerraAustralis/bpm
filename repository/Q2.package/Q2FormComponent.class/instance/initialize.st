initialization
initialize

	super initialize.
	self isBuffered: true.
	children := OrderedCollection new.
	fieldComponents := OrderedCollection new.
	cacheRefreshed := false.