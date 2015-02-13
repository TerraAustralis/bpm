accessing value
valueFromTarget: aTarget ifAbsent: aBlock
	"Should we check if target have forms here,
	like target holdsForms?"
	
	^ aTarget atField: field ifAbsent: aBlock