accessing
filteredCases: subset
	"This is called when a new filtering has been performed."

	subset class = MagmaCollection
		ifTrue: [filteredCases := subset read: #createdSeconds]
		ifFalse: [filteredCases := subset].
	table rows: self shownCases