as yet unclassified
shouldAdd: anObject

	anObject class == Q2Process ifTrue: [
		^processes includes: anObject ].
	^(anObject isKindOf: Q2Object) not
		or: [ owner canRead: anObject ]