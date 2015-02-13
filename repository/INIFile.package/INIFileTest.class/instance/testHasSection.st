as yet unclassified
testHasSection
	| ini section |
	ini _ INIFile new.
	section _ ini section: 'foo'.
	self deny: (ini includesSection: 'foo').
	section at: 'bar' put: 'baz'.
	self assert: (ini includesSection: 'foo').