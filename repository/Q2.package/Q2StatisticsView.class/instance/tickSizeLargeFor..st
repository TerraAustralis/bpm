calculating
tickSizeLargeFor: aNumber
		"Assumes aNumber <= largeNumberScalingFactor"
	aNumber <= 9	ifTrue: [^1].
	aNumber <= 16	ifTrue: [^2].
	aNumber <= 21	ifTrue: [^3].
	^5.