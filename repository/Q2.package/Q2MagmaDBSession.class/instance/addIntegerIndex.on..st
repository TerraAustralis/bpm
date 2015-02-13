magma
addIntegerIndex: aSymbol on: collection

	collection addIndex: ((MaIntegerIndex attribute: aSymbol) keySize: 64).