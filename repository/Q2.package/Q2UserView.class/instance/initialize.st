initialize-release
initialize

	super initialize.
	label := 'Settings'.
	description := 'Personal settings for using the system'.

	editor := Q2MultiFormEditor parent: self.
	editor addDefaultButtonsFor: self.
	self loadEditor