roles
usersAndRoles
	"Return a copy of our person->role associations
	without the singular roles (source, reporter, responsible)."

	^(roles reject: [:ass | ass value isSingular]) collect: [:ass | ass copy]