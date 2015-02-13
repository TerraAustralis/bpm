value and cache
cacheValueFrom: aValue component: fieldComponent
	"Make sure it is a copy so that we can modify it."

	useCompletion ifTrue: [
		aValue ifNotNil: [
			fieldComponent stateAt: #searchString put: aValue searchString]].
	multiple ifTrue: [^aValue copy] ifFalse: [^aValue]