value and cache
cacheValueFrom: aValue component: fieldComponent
	"Use empty string for nil."

	^aValue ifNil: [String new]