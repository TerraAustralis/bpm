panels
addCasePanelView: aCasePanel

	^ casePanelViews add: ((Q2CasePanelView parent: self panel: aCasePanel) editMode: editMode)