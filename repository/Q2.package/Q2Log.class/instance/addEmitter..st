emitters
addEmitter: anObject

	(emitters includes: anObject) ifFalse: [emitters add: anObject]