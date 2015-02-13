value and cache
cacheValueFrom: aValue component: fieldComponent
	"Possibly apply any type specific transformation
	or perform any other side effect of reading the
	model value into the cache. Default do nothing
	or use nil for the default value."

	^nilForDefault
		ifFalse: [aValue]
		ifTrue: [aValue = defaultValue ifTrue: [nil] ifFalse: [aValue]]