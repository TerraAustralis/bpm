testing
isMirrorOwner
	^self isMirror and: [self model owner = self currentUser]