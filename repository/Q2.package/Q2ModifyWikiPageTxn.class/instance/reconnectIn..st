transactions
reconnectIn: aModel

	super reconnectIn: aModel.
	parent _ aModel findNamedObjectById: parent