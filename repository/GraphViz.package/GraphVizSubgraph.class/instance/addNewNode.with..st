adding
addNewNode: anObject with: associations

	| node |
	node _ self rootGraph nodeNamed: anObject.
	
	^ node 
		ifNil: [super addNewNode: anObject with: associations]
		ifNotNil: [self addNode: node with: associations]