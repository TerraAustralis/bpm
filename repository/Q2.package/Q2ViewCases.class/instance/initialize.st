initialize-release
initialize

	super initialize.
	filterStackView := Q2FilterStackView parent: self.
	label := 'View cases'.
	"self registerForBacktracking updated to #states"