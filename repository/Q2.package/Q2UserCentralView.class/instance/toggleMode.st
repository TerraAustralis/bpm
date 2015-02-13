edit
toggleMode
	"Enter or exit edit mode."

	super toggleMode.

	editMode ifTrue: [
		oldCentral := central.
		central := central copy.
		self initializeCasePanelViews].

	casePanelViews do: [:p | p editMode: editMode].