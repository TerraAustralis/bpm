indexing
addUniqueObjectIndex: aSymbol on: collection

	self assert: (collection class = self dbCollectionClass).

	collection createIdentityIndexOn: aSymbol asString