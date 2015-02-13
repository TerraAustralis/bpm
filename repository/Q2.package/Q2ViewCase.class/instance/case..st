accessing
case: anObject
	super case: anObject.
	editor view: case editFormBuffer.
	self addExtraTabs