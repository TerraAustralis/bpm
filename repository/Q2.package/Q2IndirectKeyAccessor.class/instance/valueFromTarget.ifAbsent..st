accessing value
valueFromTarget: aTarget ifAbsent: aBlock
	^ (aTarget respondsTo: selector yourself) ifTrue: [
			(aTarget perform: selector) at: key ifAbsent: aBlock			
		] ifFalse: aBlock