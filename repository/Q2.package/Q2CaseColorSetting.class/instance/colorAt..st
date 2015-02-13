accessing
colorAt: aKey
	^ codes at: aKey asSymbol ifAbsent: [self defaultColor]