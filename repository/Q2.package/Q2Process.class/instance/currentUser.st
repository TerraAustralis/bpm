finding
currentUser

	| user |
	user _ self session currentUser.
	^importedUsers detect: [:each | each = user ] ifNone: [
		self error: 
			'The current user ', user username, 
			' can not be resolved in the context of Process ', 
			self name, '. Should not happen.'. "Should never happen?" 
			^nil.
		].