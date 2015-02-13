as yet unclassified
addDefaultButtonsFor: owner
	self buttons
		button: 'Save changes' callback: [owner save] tooltip: 'Changes are saved as you go';"tooltip: 'Save all changes made in the editor';"
		button: 'Cancel changes' callback: [owner cancel] tooltip: 'Cancel all changes made in the editor'