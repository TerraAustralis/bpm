initialize-release
initialize
	super initialize.
	description := 'Edit users in system'.
	label := 'Users'.
	
	editor := Q2MultiFormEditor parent: self.
	editor addDefaultButtonsFor: self.

	userSubsets := #('All users' 'Users from LDAP' 'Regular users' 'Administrators').
	selectedSubset := userSubsets first