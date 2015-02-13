indexing
deleteIndexFile

	Q2Platform fileDirectoryClass default
		deleteFileNamed: self indexFullFileName;
		deleteFileNamed: self indexFullFileName, '.prop'