as yet unclassified
testArray
	| iterator array |
	array := #(3 2 1).
	iterator := Q2ComparatorIterator on: array.
	self assert: iterator actualObject = array.
	self deny: iterator isActualComparable.
	self assert: iterator next actualObject = 3.
	self assert: iterator next actualObject = 2.
	self assert: iterator next actualObject = 1.	
	iterator next.
	self assert: iterator atEnd