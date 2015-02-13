as yet unclassified
deepCopyOf: anObject
	"return an object, if it was already copied, or its deep copy , if not "
	
	^ references at: anObject ifAbsentPut: [ anObject veryDeepCopyWith: self ]