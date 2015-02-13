emitters
removeEmitter: anObject
	(emitters includes: anObject) ifTrue: [
		emitters remove: anObject.
		Q2Log debug: 'Emitter removed: ', anObject asString.
	]