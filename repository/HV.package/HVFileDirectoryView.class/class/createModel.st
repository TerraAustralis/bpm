as yet unclassified
createModel
	"This is called when the application is started."

	| dir dirName |
	dirName := 'testdir'.
	dir := FileDirectory default.
	(dir directoryExists: dirName)
		ifFalse: [dir createDirectory: dirName].
	^dir directoryNamed: dirName