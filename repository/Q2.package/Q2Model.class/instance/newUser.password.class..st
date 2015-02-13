users
newUser: username password: pass class: userClass

	| user |
	(self findUserNamed: username) ifNil: [
		user := userClass name: username.
		user password: pass.
		self addUser: user.
		^user].
	^nil