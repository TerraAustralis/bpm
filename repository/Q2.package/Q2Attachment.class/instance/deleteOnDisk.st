private
deleteOnDisk
	"We delete our content from the temp area.
	If this is the last file deleted we also delete the old directory."

	| tempDir |
	tempDir := case tempAttachmentsDirectory.
	tempDir deleteFileNamed: localFileName.
	tempDir entries isEmpty ifTrue: [
		tempDir containingDirectory deleteDirectory: tempDir localName]