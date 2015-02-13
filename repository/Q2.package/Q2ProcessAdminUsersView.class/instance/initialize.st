initialize-release
initialize
	super initialize.
	description := 'Edit users in process'.
	label := 'Process users'.

	selectedWithAccess := selectedWithoutAccess := selectedAdministrators := #()