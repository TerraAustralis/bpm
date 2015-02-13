methods
rename: aFile toBe: newFile

	"no file rename primitive. we do a hard way, copy a file, and then delete old one"
	
	| new old buf |
	
	old := self readOnlyFileNamed: aFile.
	new := self forceNewFileNamed: newFile.
	[ (buf := old next: 2048) notNil and: [buf size >0] ] whileTrue: [new nextPutAll: buf ].
	old close.
	new close.
	self deleteFileNamed: aFile.