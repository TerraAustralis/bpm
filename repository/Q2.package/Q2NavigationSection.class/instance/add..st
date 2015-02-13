building
add: aChild

	children ifNil: [children _ OrderedCollection new].
	^children add: aChild