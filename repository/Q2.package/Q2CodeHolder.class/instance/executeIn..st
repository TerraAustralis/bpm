running
executeIn: anObject 
	anObject preDefinition.
	self compileAndRunIn: anObject.
	anObject
		definition: code;
		postDefinition