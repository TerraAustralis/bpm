methods
forceRename: oldFileName toBe: newFileName


	| inStream outStream data |
	
	"Read contents of file to rename."
	inStream := self readOnlyFileNamed: oldFileName.
	inStream notNil ifTrue: [
		"Read data"
		inStream binary.
		data := inStream contents.
		inStream close.
		"Write data to new file."
		outStream := self forceNewFileNamed: newFileName.
		outStream binary.
		outStream nextPutAll: data.
		outStream close.
		"Delete old file."
		self deleteFileNamed: oldFileName ifAbsent: [].
		 ].