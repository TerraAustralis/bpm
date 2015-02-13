as yet unclassified
mirrorForTorWithoutTransaction

	Q2Session sessionModelDo: [ :session :model |
		| user |
		user := model findUserNamed: '_tor'.
		Q2MirrorCreatorService handleItem: (Q2PersonalMirrorDefinition 
			for: user
			prefix: 'tor'
			processes: { model processes first }) ]