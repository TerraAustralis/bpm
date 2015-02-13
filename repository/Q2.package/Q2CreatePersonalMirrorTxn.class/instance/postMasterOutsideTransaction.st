as yet unclassified
postMasterOutsideTransaction

	super postMasterOutsideTransaction.
	Q2Session current model push: mirrorDefinition forService: Q2MirrorCreatorService.