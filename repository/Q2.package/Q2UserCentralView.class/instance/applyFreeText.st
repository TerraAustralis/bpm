searching
applyFreeText
	"Apply free text filter to all panels, a bit complicated
	but we don't want to do unneeded searching."

	| processes processesToSearch hits |

	"If freetext is empty we do not need to make extra filtering"
	freetextFilter freetext isEmptyOrNil
		ifTrue: [
			casePanelViews do: [:panelView | panelView shownCases: panelView filteredCases]]
		ifFalse: [
			"Perform free text search ONCE for all processes in parallell that we need."
			processes := casePanelViews collect: [:panelView | panelView processes].
			processesToSearch := Set new.
			processes do: [:procs | processesToSearch addAll: procs].
			hits := freetextFilter searchPerProcesses: processesToSearch asOrderedCollection.

			"Then we use the resulting hits to refine the shownCases in our panelViews."
			casePanelViews with: processes do: [:panelView :procs |
				panelView shownCases: (freetextFilter filter: panelView filteredCases processes: procs hits: hits)]]