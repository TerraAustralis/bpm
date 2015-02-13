as yet unclassified
testBatchAddition
	| ini dict |
	ini _ INIFile new.
	dict _ Dictionary withAll: {'key1'->'val1'. 'key2'->'val2'}.
	(ini section: 'foo') addAll: dict.
	
	self assert: ((ini section: 'foo') at: 'key1') = 'val1'.
	self assert: ((ini section: 'foo') at: 'key2') = 'val2'.