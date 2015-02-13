logProtocol
level: level name: symbol sender: sender message: msg
	"We log everything regardless of level.
	Rotate log file if max size is reached."

	self writeLine: (block value: level value: symbol value: sender value: msg).
	file position > (Q2Object settings at: #logFileSize) asInteger ifTrue: [self rotate]