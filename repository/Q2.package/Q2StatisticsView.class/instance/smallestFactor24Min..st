calculating
smallestFactor24Min: aNumber

	^{1 . 2 . 3 . 4 . 6 . 8 . 12 . 24} detect: [:int | int >= aNumber]