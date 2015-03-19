as yet unclassified
add: anElement
	children ifNil: [children _ OrderedCollection new].
	^children add: anElement