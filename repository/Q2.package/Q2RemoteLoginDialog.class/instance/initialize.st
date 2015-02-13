initialize-release
initialize
	super initialize.
	description := 'Login remotely to the ',self settings systemName,' server to download mirror'.
	label := 'Mirror download'