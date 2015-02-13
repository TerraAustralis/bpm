private
userList
	"#('All users' 'Users from LDAP' 'Regular users' 'Administrators')."
	
	realUserList := self model realUsers.
	selectedSubset = 'All users' ifTrue: [
		^realUserList].
	selectedSubset = 'Users from LDAP' ifTrue: [
		^realUserList select: [:each | each isFromLdap]].
	selectedSubset = 'Regular users' ifTrue: [
		^realUserList select: [:each | each isFromLdap not]].
	selectedSubset = 'Administrators' ifTrue: [
		^realUserList select: [:each | each isAdmin]]