methods
newFileNamed: localFileName
	"On GemStone this method is missing and is mapped to forceNewFileNamed:."

	^ self forceNewFileNamed: (self fullNameFor: localFileName)