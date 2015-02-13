linking
findLinkById: anID

	^links detect: [:l | l id = anID] ifNone: [nil]