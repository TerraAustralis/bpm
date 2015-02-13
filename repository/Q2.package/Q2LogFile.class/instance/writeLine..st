as yet unclassified
writeLine: aString
	((aString notNil) and: [file notNil]) ifTrue: [
		file isOpen ifFalse: [file reopen].
		file nextPutAll: aString, String crlf.	
		"file flush"]