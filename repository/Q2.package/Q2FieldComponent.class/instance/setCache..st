accessing
setCache: anObject
	"Called from the field, we let the field do any field->cache conversion."

	^self basicCache: (field fieldForCache: anObject component: self)