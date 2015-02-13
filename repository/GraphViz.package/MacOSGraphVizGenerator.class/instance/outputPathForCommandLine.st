as yet unclassified
outputPathForCommandLine

	| path |
	path _ self outputPath
		copyReplaceAll: ':'
		with: '/'.
	path _ path
		copyReplaceAll: ' '
		with: '\ '.
	(path endsWith: '/') ifFalse: [path _ path, '/'].
	
	^ '/Volumes/', path