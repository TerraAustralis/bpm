accessing
calculate
	"We calculate the filtered cases and then we duplicate that as the shown ones."

	| result |
	result := panel stack filter: parent nonFilteredCases.
	self shownCases: result; filteredCases: result