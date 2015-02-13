panels
movePanelViewDown: aCasePanelView
	"Move view too, silly code."

	| index |
	index := casePanelViews indexOf: aCasePanelView.
	index = casePanelViews size ifTrue: [^ self].
	casePanelViews swap: index with: index + 1.

	^central movePanelDown: aCasePanelView panel