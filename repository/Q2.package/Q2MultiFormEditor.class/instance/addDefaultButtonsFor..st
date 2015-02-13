accessing
addDefaultButtonsFor: owner
	self buttons
		button: 'Save changes' callback: [owner save] tooltip: 'Save all changes made in the editor';
		button: 'Cancel changes' callback: [owner cancel] tooltip: 'Cancel all changes made in the editor'