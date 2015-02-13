initialize-release
initialize
	super initialize.
	description := 'Login to ', self settings systemName.
	label := 'Login'.