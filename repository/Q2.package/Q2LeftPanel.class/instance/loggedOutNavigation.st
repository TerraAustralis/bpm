navigation
loggedOutNavigation
	| login loginSection |
	navigation := Q2Navigation divClass: 'vertmenu'.
	loginSection := navigation heading: 'Not logged in'.
	(self noDb or: [self isMirror]) ifTrue: [ 
		login := Q2RemoteLoginDialog parent: self.
		loginSection add: login ].
	self noDb ifFalse: [
		login := Q2ServerLoginDialog new authenticator: self.
		loginSection add: login ].
	self addHelp.
	navigation default: login