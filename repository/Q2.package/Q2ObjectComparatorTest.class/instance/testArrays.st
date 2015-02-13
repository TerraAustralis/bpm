as yet unclassified
testArrays
	| comparator a1 a2| 
	a1 :=  Array with: 1 with: 2 with: 3.
	a2 :=  Array with: 1 with: 2 with: 3.
	comparator := Q2ObjectComparator with: a1 with: a2.
	self assert: comparator compare.