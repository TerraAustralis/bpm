barf4
onEditorUserEdited: selection update: updater
 
	graphFormPreviousClickedItem := graphFormClickedItem.
	graphFormClickedItem := selection ifNotNil: [ self graphItemFrom: selection ].

	self recalculateFocus.

	self suFullUpdate: updater