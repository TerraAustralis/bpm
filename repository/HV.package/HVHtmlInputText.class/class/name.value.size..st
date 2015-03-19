instance creation
name: aName value: aValue size: aSize
	^(super named: aName) value: (aValue ifNil: ['']); size: aSize; yourself