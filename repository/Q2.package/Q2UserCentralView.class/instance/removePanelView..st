panels
removePanelView: aCasePanelView
	"Delete both view and in the model."

	casePanelViews remove: aCasePanelView.
	^central removeCasePanel: aCasePanelView panel