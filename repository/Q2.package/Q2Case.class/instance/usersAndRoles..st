roles
usersAndRoles: coll
	"Set all non singular person->role associations.
	We find removals and additions and use appropriate methods."

	| oldRoles newRoles user role |
	oldRoles := roles copy.
	newRoles := coll reject: [:ass | ass key isNil or: [ass value isNil]].

	"Additions"
	newRoles do: [:ass |
		user := ass key. role := ass value.
		(self user: user hasRole: role) ifFalse: [
"			Q2Log debug: 'ROLE: Added ', user name, ' as ', role name."
			self addUser: user as: role]].

	"Removals"
	oldRoles do: [:ass |
		user := ass key. role := ass value.
		ass value isSingular ifFalse: [ "ignore singular roles"
			(newRoles includes: ass)
				ifFalse: [
"					Q2Log debug: 'ROLE: Removed ', ass key name, ' as ', ass value name."
					self removeUser: ass key as: ass value]]].

	(oldRoles ~= roles) ifTrue: [
"		Q2Log debug: 'ROLE: Modified'."
		(Q2ModifiedCaseRolesEvent for: self) signal]