initialize-release
initialize

	| autoLoginUsername |
	super initialize.
	formatter := Q2SwikiFormatter base: '' modelProvider: self session.
	keepAliveUpdater := Q2KeepAliveUpdater new.

	autoLoginUsername := self settings autoLoginUsername.
	autoLoginUsername	ifNil: [ ^ self loggedOutNavigation ].
	self loginUsername: autoLoginUsername password: (self settings autoLoginPassword).