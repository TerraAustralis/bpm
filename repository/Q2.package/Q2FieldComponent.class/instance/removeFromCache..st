cache
removeFromCache: anObject	
	"When the value is a collection this works."

	cache remove: anObject ifAbsent: []