adding
addNewStyle: anObject with: associations

	| atts style |
	(GraphVizStyle styleNodes includes: anObject) ifFalse: [^ self].
	
	atts _ associations asOrderedCollection.
	
	style _ GraphVizStyle new id: anObject.
	
	anObject = #node ifTrue:
		[currentNodeStyle attributes keysAndValuesDo: [:key :value | style attributeAt: key put: value].
		currentNodeStyle _ style].
	
	anObject = #edge ifTrue:
		[currentEdgeStyle attributes keysAndValuesDo: [:key :value | style attributeAt: key put: value].
		currentEdgeStyle _ style].
	
	atts do: [:each | style attributes at: each key put: each value].	
	
	^ self addNewChild: style