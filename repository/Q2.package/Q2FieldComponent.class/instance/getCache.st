accessing
getCache
	"Called from the field, we let the field do any cache->field conversion."

	^field cacheForField: cache component: self