adding
addNewNode: anObject with: associations

	| node |
	node _ self nodeNamed: anObject.
	node ifNotNil: [^ node].
	
	node _ GraphVizNode new id: anObject; graph: self.
	
	node inheritedStyle: currentNodeStyle.
	^ self addNode: node with: associations