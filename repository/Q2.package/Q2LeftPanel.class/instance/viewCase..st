actions
viewCase: aCase
	"Check if we already have a component for this case, otherwise
	put one in at the top and remove the last one if we are above recent cases limit."

	| view |
	view := self findCaseViewFor: aCase.
	view ifNil: [
		casesSection children size > (self currentUserSettings maxRecentCases + 1)
			ifTrue: [casesSection removeLast].
		view := Q2ViewCase parent: self.
		casesSection add: view afterIndex: 2.
		view case: aCase].
	navigation selection: view.
	^view