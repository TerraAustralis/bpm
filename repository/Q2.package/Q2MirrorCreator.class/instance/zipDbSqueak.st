zipping
zipDbSqueak
	"Code ''stolen'' from Göran. :) http://wiki.squeak.org/squeak/3644"

	| dirName archive dir entry |
	dirName := self databaseFullPath.
	archive := ZipArchive new.
	dir := FileDirectory on: dirName.
	dir fullNamesOfAllFilesInSubtree do: [ :fn |
		entry := archive addFile: fn as: (fn last: (fn size - dirName size - 1)).
		entry desiredCompressionMethod: ZipArchive compressionDeflated ].
	archive writeToFileNamed: self zipFilePath; close.