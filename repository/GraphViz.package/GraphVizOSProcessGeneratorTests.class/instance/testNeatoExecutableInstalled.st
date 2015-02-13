testing
testNeatoExecutableInstalled
	"The neato external program "

	self assert: (ShellSyntax new findExecutablePathFor: 'neato' inDirectoryPath: nil) notNil