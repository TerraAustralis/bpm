value and cache
modelValueFrom: aValue component: fieldComponent
	"If we are using completion and a valuesProvider that is a CustomObjectType,
	then we need to look up the real object because we only have the searchString."

	(useCompletion and: [
		aValue notNil and: [
			valuesProvider isCustomObjectType]])
					ifTrue: [^valuesProvider findObjectSearchString: aValue].
	^aValue