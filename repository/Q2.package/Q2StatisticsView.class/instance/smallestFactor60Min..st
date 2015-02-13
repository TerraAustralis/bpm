calculating
smallestFactor60Min: aNumber
		"Find smallest factor of 60 > aNumber. 
	Some factors left out because they are not suitable yTick sizes"

	^{1 . 2 . 3  . 5 . 10 . 20 . 30} detect: [:int | int >= aNumber]