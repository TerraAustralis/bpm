accessing
verifyPassword: pass

	canLogin ifFalse: [
		Q2Log notice: 'Deactivated user: ', name, ' denied login'.
		^false].

	(password isNil and: [
		(Q2Object settings at: #useForAuthentication section: #LDAP) and: [
			(Q2LDAP user: self username password: pass) notNil]]) ifTrue: [
				"Password verified through LDAP"
				^true].

	^password notNil and: [password = pass]