accessing
case: anObject
	super case: anObject.
	editor edit: case editFormBuffer.
	self addExtraTabs