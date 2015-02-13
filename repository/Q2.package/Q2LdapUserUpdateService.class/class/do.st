as yet unclassified
do
	| ldapUsers currentUsers model newUsers deletedUsers strategy |

	self flag: #q2todo. 
	"Real transactions..."	
	"This method is Magma specific."

	Q2Session sessionDo: [ :sess |
	
		strategy := (MaReadStrategy minimumDepth: 0)
								forVariableNamed: 'ldapId' onAny: Q2User readToDepth: 1;
								forVariableNamed: 'name' onAny: Q2User readToDepth: 1.					
		sess dbSession readStrategy: strategy.

		model := sess model. 
		ldapUsers := Q2LDAP allUsers.
		Q2Log time: [currentUsers := model users asArray] debug: 'model users asArray'.
		Q2Log time: [
			newUsers := ldapUsers reject: [:ldap | currentUsers anySatisfy: [:current |
						(current ldapId = (ldap at: 'id')) or: 
						[current username = (ldap at: 'username')] or: 
						[(ldap at: 'username') isEmpty]]].
		] debug: 'find new'.

		Q2Log time: [
			deletedUsers := currentUsers reject: [:current | ldapUsers includesKey: current ldapId].
			deletedUsers := deletedUsers reject: [:current | current ldapId isNil].
			deletedUsers isEmpty ifFalse: [
				sess dbSession commit: [
					deletedUsers do: [:user |
						Q2Log info: 'Deactivating user: ', user name.
						user canLogin: false]]].
		] debug: 'reject deleted'.

		Q2Log time: [
			sess dbSession commit: [
				newUsers do: [:ldap | | user |
					((ldap at: 'username' ifAbsent: ['']) ~= '') ifTrue: [
						user := model newUser: (ldap at: 'username') password: nil.
						user ifNil: [self error: 'Trying to create new user that already exists - should not happen'].
						user ldapId: (ldap at: 'id').
						[user person email: (ldap at: 'email')]
							on: Error do: [:e |
								Q2Log error: 'Error when setting LDAP email: ', (ldap at: 'email'), ' for user: ', user username].
						user person firstName: (ldap at: 'givenname') lastName: (ldap at: 'surname')]]].
		] debug: 'add users'.
	].
	Q2Log info: 'Users added: ', newUsers size asString.
	Q2Log info: 'Users deactivated: ', deletedUsers size asString