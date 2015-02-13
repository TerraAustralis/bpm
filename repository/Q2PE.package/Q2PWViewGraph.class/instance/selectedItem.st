calculating
selectedItem

	| id |
	
 	graphFormClickedItem ifNil: [ ^ nil ].

	id := UUID fromString: (graphFormClickedItem attributes at: #q2id).

	^ (self process workflow findStageById: id) 
			ifNil: [ self process workflow findTransitionById: id ]