as yet unclassified
reconnectIn: aModel

	super reconnectIn: aModel.
	formOwner := formOwner ifNil: [aModel] ifNotNil: [aModel findObjectById: formOwner].
	form ifNotNil: [	form := aModel findObjectById: form. ]