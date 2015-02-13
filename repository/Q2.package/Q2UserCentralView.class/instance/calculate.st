searching
calculate
	"Make sure all panels are calculated and then apply free text filter."

	casePanelViews do: [:panelView | panelView calculate].
	self applyFreeText