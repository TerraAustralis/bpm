magma
addSearchStringIndex128: aSymbol on: collection

	collection addIndex: ((MaSearchStringIndex attribute: aSymbol) keySize: 128).