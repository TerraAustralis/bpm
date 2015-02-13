action
calculate
	"Calculate the filtered subset of cases and tell parent."

	| result |
	stack isChanged ifTrue: [
		Q2Log time: [result := stack filter: parent nonFilteredCases] debug: 'search time'.
		parent filteredCases: result]