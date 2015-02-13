testing
includesProcess: aProcessOrNil
	aProcessOrNil ifNil: [^true].
	^(self processes includes: aProcessOrNil)