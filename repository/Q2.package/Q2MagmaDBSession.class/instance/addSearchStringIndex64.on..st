magma
addSearchStringIndex64: aSymbol on: collection

	collection addIndex: ((MaSearchStringIndex attribute: aSymbol) keySize: 64).