as yet unclassified
testAQ2ModelEqualsItself
	self doWithModel: [ :model |
		| comparator |
		comparator := Q2ObjectComparator with: model with: model.
		self assert: comparator compare ]