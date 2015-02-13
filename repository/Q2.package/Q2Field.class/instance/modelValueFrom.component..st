value and cache
modelValueFrom: aValue component: fieldComponent
	"Possibly apply any type specific transformation
	or perform any other side effect of reading the
	cache value back into the model. Default do nothing
	or use nil for the default value."

	^nilForDefault
		ifFalse: [aValue]
		ifTrue: [aValue = defaultValue ifTrue: [nil] ifFalse: [aValue]]