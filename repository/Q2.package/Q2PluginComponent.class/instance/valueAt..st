accessing
valueAt: aKey
	^ self values at: aKey ifAbsent: [nil].