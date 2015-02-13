as yet unclassified
valueFromTarget: aTarget ifAbsent: aBlock
	^ (aTarget respondsTo: selector yourself) ifTrue: [  | res |
		res := aTarget perform: selector.
		(res respondsTo: selector2 yourself) ifTrue: [ res perform: selector2 ] ifFalse: [aBlock value]
	] ifFalse: [ aBlock value ]