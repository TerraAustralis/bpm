private
save: content
	"Save to local file if it has contents."

	| fileStream |
	self calculateLocalFileName.
	content ifNotNil: [
		fileStream := self directory forceNewFileNamed: localFileName.
		[fileStream binary; nextPutAll: content]
			ensure: [ fileStream close ]]