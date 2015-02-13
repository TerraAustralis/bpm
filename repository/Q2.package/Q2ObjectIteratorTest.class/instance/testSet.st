as yet unclassified
testSet
	| iterator set |
	set := #(3 2 1) asSet.
	iterator := Q2ComparatorIterator on: set.
	self assert: iterator actualObject = set.
	self deny: iterator isActualComparable.
	self assert: iterator next actualObject = 1.
	self assert: iterator next actualObject = 2.
	self assert: iterator next actualObject = 3.	
	iterator next.
	self assert: iterator atEnd