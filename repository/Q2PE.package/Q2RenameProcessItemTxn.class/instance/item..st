accessing
item: anObject
	"Set the value of oldName"

	super item: anObject.
	self oldName: self item name.