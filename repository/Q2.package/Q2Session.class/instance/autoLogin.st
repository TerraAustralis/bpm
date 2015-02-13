accessing
autoLogin

	| user username pass |

	username := self settings autoLoginUsername.
	username ifNil: [ ^ nil ].


	user := self model findUserNamed: username.
	user ifNil: [ ^ nil ].

	pass := self settings autoLoginPassword.

	( self model verifyPassword: pass forUser: user) ifFalse: [ ^ nil ]. 

	self login: user.

	^ user