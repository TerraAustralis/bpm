accessing
processName: aString
	process _ processes detect: [:each | each name = aString]