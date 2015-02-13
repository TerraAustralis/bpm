synch
reconnectObject: anObject in: aModel
	self flag: #fix.
	(anObject isMemberOf: UUID) ifTrue: [ ^ aModel findObjectById: anObject ].

	"some common collections"
	(anObject isMemberOf: Dictionary) ifTrue: [ | newDict |
		newDict := Dictionary new.
		anObject associationsDo: [:assoc |	
			newDict at: (self reconnectObject: assoc key in: aModel) put: (self reconnectObject: assoc value in: aModel)
			].
		^ newDict
	].
	(anObject isMemberOf: Association) ifTrue: [
		^(self reconnectObject: anObject key in: aModel) -> (self reconnectObject: anObject value in: aModel) ].
	(anObject isMemberOf: OrderedCollection) ifTrue: [
		^ anObject collect: [ :i |  self reconnectObject: i in: aModel ]
	].
	^anObject