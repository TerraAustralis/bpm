as yet unclassified
reconnectIn: aModel

	super reconnectIn: aModel.
	owner := aModel findObjectById: owner.
	prefix := prefix copy.