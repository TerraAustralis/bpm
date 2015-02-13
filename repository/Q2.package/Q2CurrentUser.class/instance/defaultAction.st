as yet unclassified
defaultAction
	| temp |
	temp := Q2Session current currentUser.
	
	self assert: (temp isKindOf: Q2User).
	^ temp