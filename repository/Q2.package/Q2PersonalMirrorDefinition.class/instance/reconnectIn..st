as yet unclassified
reconnectIn: aModel
	
	super reconnectIn: aModel.
	processes := processes collect: [ :each | aModel findObjectById: each ]