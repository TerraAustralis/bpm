as yet unclassified
on: aRootObject
	aRootObject class = Q2Model
		ifTrue: [^Q2ModelProxy new].
	aRootObject class = Q2MirrorModel
		ifTrue: [^Q2ModelProxy new].
	aRootObject class = Q2Process
		ifTrue: [^Q2ProcessProxy on: aRootObject name].
	self error: 'Unexpected root object type'