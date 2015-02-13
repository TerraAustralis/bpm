accessing
cache: anObject
	"We also ask the field to possibly apply any model->cache conversion.
	Returns the transformed new cache value."

	^self basicCache: (field cacheValueFrom: anObject component: self)