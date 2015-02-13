as yet unclassified
mirrorForTorWithoutTransactionWithModelsDefinition
	" self mirrorForTorWithoutTransactionWithModelsDefinition "

	Q2Session sessionModelDo: [ :session :model |
		| user |
		user := model findUserNamed: '_tor'.
		session commit: [
			model 
				push: (model mirrors detect: [ :e | e owner = user ])
				forService: Q2MirrorCreatorService ] ]