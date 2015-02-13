initialize-release
initializeCasePanelViews

	casePanelViews _ OrderedCollection new.
	central casePanels do: [:panel | self addCasePanelView: panel]