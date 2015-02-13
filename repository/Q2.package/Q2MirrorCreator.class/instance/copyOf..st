copying
copyOf: anObject
	"Q2Log error: anObject printString."
	^objectMap at: anObject ifAbsentPut: [
		(self shouldNotCopy: anObject) 
			ifTrue: [ anObject ]
			ifFalse: [
				(self shouldNotVisit: anObject)
					ifTrue: [ anObject copy ]
					ifFalse: [ anObject basicMirrorCopy ] ] ]