wiring
onEditorUserSelected: q2Item update: updater
 
	graphFormPreviousClickedItem := graphFormClickedItem.
	graphFormClickedItem := q2Item ifNotNil: [ self graphItemFrom: q2Item ].

	self suFocusUpdate: updater