accessing
movePanelDown: aCasePanel
	"Do nothing if already last - should be checked before called."
	
	| index |
	index := casePanels indexOf: aCasePanel.
	index = casePanels size ifTrue: [^ self].
	casePanels swap: index with: index + 1