methods
oldFileOrNoneNamed: fileName
	"If the file exists, answer a read-only stream on it. If it doesn't, answer nil."

	^ (self fileExists: fileName) 
		ifTrue: [self readOnlyFileNamed: fileName]
		ifFalse: [nil]