testing
isAdmin: aBoolean

	self isAdmin == aBoolean ifFalse: [
		aBoolean
			ifTrue: [self model addAdministrator: self]
			ifFalse: [self model removeAdministrator: self]]