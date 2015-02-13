accessing
getOnce

	Q2Session sessionModelAsCurrentUserDo: [ :session :model |
		model isMirror ifTrue: [
			prefix := model prefix.
			modelMirrorOwnerFullName :=  model owner fullName.
		].
		anybodyUser := model anybodyUser.
	 ]