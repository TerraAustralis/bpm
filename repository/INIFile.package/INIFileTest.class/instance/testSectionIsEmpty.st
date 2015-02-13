as yet unclassified
testSectionIsEmpty
	| ini section |
	ini _ INIFile new.
	section _ ini section: 'foo'.
	self assert: section isEmpty.
	section at: 'bar' put: 'baz'.
	self deny: section isEmpty.