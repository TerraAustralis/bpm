indexing
addUUIDIndex: aSymbol on: collection

	self assert: (collection class = self dbCollectionClass).
	
	collection createEqualityIndexOn: aSymbol asString withLastElementClass: UUID.