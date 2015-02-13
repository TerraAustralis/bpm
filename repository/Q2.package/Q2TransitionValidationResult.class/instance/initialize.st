initialize-release
initialize

	super initialize.
	deniedTransitions := Dictionary new.
	validTransitions := OrderedCollection new.
	validCriteria := Set new