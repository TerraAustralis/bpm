as yet unclassified
mirrorForTorWithTransaction

	Q2Session sessionModelDo: [ :session :model |
		| user |
		session commit: [
			user := model findUserNamed: '_tor'.
			model 
				createPersonalMirrorDefinitionFor: user 
				prefix: 'tor' 
				processes: { model processes first } ] ]