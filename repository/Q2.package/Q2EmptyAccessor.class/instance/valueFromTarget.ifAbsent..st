accessing value
valueFromTarget: aTarget ifAbsent: aBlock
	"Behave as if there's no value in target"
	^ aBlock value