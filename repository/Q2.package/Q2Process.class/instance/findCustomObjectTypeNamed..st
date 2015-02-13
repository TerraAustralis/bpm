custom objects
findCustomObjectTypeNamed: aName

	^(customObjectTypes findNamed: aName) ifNil: [
		importedCustomObjectTypes findNamed: aName]