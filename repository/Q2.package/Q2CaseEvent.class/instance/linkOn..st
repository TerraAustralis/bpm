accessing
linkOn: aStream
	^'http://', (self settings at: #serverHost),':',(self settings at: #serverPort),'/seaside/Gjallar/case/', case name