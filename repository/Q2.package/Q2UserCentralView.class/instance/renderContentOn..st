render
renderContentOn: html 
	"This is the default view of the user."

	super renderContentOn: html.

	editMode ifFalse: [
		html form: [
			html break; label: 'Text search' field: [:id |
				html textInput id: id;
					size: 40;
					on: #freetext of: freetextFilter.
				html space; button: 'Apply' callback: [self applyFreeText] tooltip: 'Apply the free text search expression as a filter'.
				html button: 'Clear' callback: [self clear] tooltip: 'Clear free text filter']
				tooltip: 'Enter one or more words to search for, you can also use AND, OR, NOT, () and wildcard *'.
			html div
				class: 'errorMessage';
				with: [ html text: freetextFilter errorMessage ] ] ].

	editMode
		ifTrue: [
			html form with: [
				casePanelViews do: [:panelView |
					html render: panelView].
				html horizontalRule.
				html button: 'Add case panel' callback: [self newPanelView] tooltip: 'Add one more case panel'.
				html horizontalRule.
				html button: 'Save changes' callback: [self save] tooltip: 'Save all changes made to the page'.
				html button: 'Cancel' callback: [self cancel] tooltip: 'Cancel all changes made to the page']]
		ifFalse: [
			casePanelViews do: [:panelView |
				html render: panelView]].

	"(self currentUserSettings showEditMode and: [editMode not]) ifTrue: [
		self renderEditSwitchOn: html]"