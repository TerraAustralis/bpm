panels
movePanelViewUp: aCasePanelView
	"Move view too, silly code."

	| index |
	index := casePanelViews indexOf: aCasePanelView.
	index = 1 ifTrue: [^ self].
	casePanelViews swap: index with: index - 1.

	^central movePanelUp: aCasePanelView panel