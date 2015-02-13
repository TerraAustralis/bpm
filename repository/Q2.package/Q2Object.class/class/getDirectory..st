files
getDirectory: relativePath
	"Get or create a directory for a given path."

	^ (Q2Platform fileDirectoryClass on: 
		(Q2Platform workingDirectory fullNameFor: relativePath)) assureExistence; yourself