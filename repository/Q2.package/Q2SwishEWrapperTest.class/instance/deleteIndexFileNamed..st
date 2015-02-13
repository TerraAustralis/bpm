as yet unclassified
deleteIndexFileNamed: fullFileName

	Q2SwishEWrapper indexDirectory
		deleteFileNamed: fullFileName;
		deleteFileNamed: fullFileName, '.prop'.