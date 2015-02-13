accessing
movePanelUp: aCasePanel
	"Do nothing if already first - should be checked before called."
	
	| index |
	index := casePanels indexOf: aCasePanel.
	index = 1 ifTrue: [^ self].
	casePanels swap: index with: index - 1