initialization
initialize
	"self registerForBacktracking."
	super initialize.
	description := 'View usage statistics.'.
	label := 'Statistics'.
	tabBook := Q2TabBook parent: self.	"tabBook is currently unused"
	statisticsHolder := Q2Statistics new.