rendering
renderMainOn: html

	renderer := html.
	editMode
		ifTrue: [
			html label: 'Name' field: [:id |
				html textInput id: id;
					on: #editName of: self;
					size: 40]
				tooltip: 'The name of this case panel'.
			html label: 'Description' field: [:id |
					html textInput id: id;
					on: #editDescription of: self;
					size: 60]
				tooltip: 'The description (tooltip) of this case panel']
		ifFalse: [
			html tooltip: model description with: [
				html heading level3; with: model name]].

	self renderFieldsOn: html.

	html horizontalRule.
	editMode
		ifTrue: [		
			html button: 'Delete' callback: [self delete] tooltip: 'Delete this filter.'.
			html button: 'Save' callback: [self save] tooltip: 'Save all changes made to the page'.
			html button: 'Save as new' callback: [self saveAsNew] tooltip: 'Save all changes made to the page'.
			html button: 'Cancel' callback: [self cancel] tooltip: 'Cancel all changes made to the page'].

	(self currentUserSettings showEditMode and: [editMode not]) ifTrue: [
		self renderEditSwitchOn: html].

	editMode ifFalse: [
		html anchor: 'unload' callback: [parent unloadFilterViewer: self] tooltip: 'Unload this filter']