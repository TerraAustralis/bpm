accessing
nonFilteredCases
	"Return all cases before filtering.
	Keep track of how many those are."

	| cases |
	cases _ super nonFilteredCases.
	allSize _ cases size.
	^cases