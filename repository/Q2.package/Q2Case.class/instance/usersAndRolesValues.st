roles
usersAndRolesValues
	"Return all roles available in this process.
	We remove the singular roles."

	^self process roles reject: [:each | each isSingular]