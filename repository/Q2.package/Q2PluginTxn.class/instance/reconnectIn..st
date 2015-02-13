as yet unclassified
reconnectIn: aModel

	super reconnectIn: aModel.
	plugin := aModel findObjectById: plugin.
	registryOwner := registryOwner ifNil: [aModel] ifNotNil: [aModel findObjectById: registryOwner]