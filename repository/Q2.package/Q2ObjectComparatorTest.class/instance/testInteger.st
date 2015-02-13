as yet unclassified
testInteger
	| comparator | 
	comparator := Q2ObjectComparator with: 1 with: 1.
	self assert: comparator compare.