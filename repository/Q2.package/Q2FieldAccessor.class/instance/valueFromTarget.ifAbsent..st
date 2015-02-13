accessing value
valueFromTarget: aTarget ifAbsent: aBlock
	"Subclasses must implement this message for retreiving value from given target"
	self subclassResponsibility