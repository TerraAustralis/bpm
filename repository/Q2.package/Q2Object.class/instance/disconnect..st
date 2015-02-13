synch
disconnect: anObject
	"Shorthand for disconnecting."
	"todo - remove the #disconnect: at all, use #disconnected instead and let object decide what to return for  disconnected form"
	self flag: #fix.
	anObject isUniqueObject ifTrue: [ ^ anObject id copy ].

	"some common collections"
	(anObject isMemberOf: Dictionary) ifTrue: [
		| newDict |
		newDict := Dictionary new.
		anObject associationsDo: [:assoc |	
			newDict at: (self disconnect: assoc key) put: (self disconnect: assoc value)].
		^ newDict ].
	(anObject isMemberOf: Association) ifTrue: [ 
		^(self disconnect: anObject key) -> (self disconnect: anObject value) ].
	(anObject isMemberOf: OrderedCollection) ifTrue: [
		^ anObject collect: [ :i |  self disconnect: i  ]	].
	^anObject