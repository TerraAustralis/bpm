as yet unclassified
cleanUp
	" delete previously downloaded zip files "

	self mirrorsDirectory
		deleteFileNamed: name, '.zip'; 
		deleteFileNamed: name, '.zip.part'.