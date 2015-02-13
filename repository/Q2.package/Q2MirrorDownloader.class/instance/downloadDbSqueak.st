as yet unclassified
downloadDbSqueak
	"Downloads a mirror from the Q2 server."

	| zipFile |
	self cleanUp.	
	
	zipFile := self downloadUrl asUrl retrieveContents.
	(FileDirectory default fileNamed: self targetPath)
		binary;
		nextPutAll: zipFile content;
		close