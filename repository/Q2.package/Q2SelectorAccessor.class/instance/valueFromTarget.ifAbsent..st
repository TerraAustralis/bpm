accessing value
valueFromTarget: aTarget ifAbsent: aBlock
	^ (aTarget respondsTo: selector yourself) ifTrue: [ aTarget perform: selector ] ifFalse: [ aBlock value ]