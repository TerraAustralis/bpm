as yet unclassified
testInteger
	| iterator |
	iterator := Q2ComparatorIterator on: 1.
	self assert: iterator actualObject = 1.
	self assert: iterator isActualComparable.
	self assert: iterator stack first object = 1.
	iterator next.
	self assert: iterator atEnd