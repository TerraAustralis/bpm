value and cache
cacheValueFrom: aValue component: fieldComponent
	"Make sure it is a copy so that we can modify it.
	If multiple then the key is a collection that we must copy."

	| copy |
	copy := aValue copy.
	useCompletionKeys ifTrue: [fieldComponent stateAt: #searchStringKeys put: aValue key searchString].
	multiple ifTrue: [copy value: copy value copy].
	useCompletion ifTrue: [fieldComponent stateAt: #searchString put: copy value searchString].
	^copy