as yet unclassified
testMockMagmaCollection

	| c first reader |
	c := Q2MockMagmaCollection new.
	c addIndex: (MaSearchStringIndex attribute: #name).
	first := Q2Case name: 'a'.
	c add: (Q2Case name: 'b'); add: first; add: (Q2Case name: 'c').
	self assert: (c read: #name) size = 3.
	reader := c read: #name from: 'a' to: 'b'.
	self assert: reader size = 2.
	self assert: reader first = first