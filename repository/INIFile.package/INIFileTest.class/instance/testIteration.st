as yet unclassified
testIteration
	| ini |
	ini _ INIFile new.
	(ini section: 'foo') at: 'key1' put: 'val1'.
	(ini section: 'foo') at: 'key2' put: 'val2'.
	(ini section: 'bar') at: 'key1' put: 'val1'.
	(ini section: 'bar') at: 'key2' put: 'val2'.
	
	self assert: ini sections size = 2.
	ini sectionsDo: [:ea | self assert: ea associations size = 2].