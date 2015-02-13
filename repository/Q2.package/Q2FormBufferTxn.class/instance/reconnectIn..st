synch
reconnectIn: aModel
	super reconnectIn: aModel.
	formBuffer ifNotNil: [formBuffer reconnectIn: aModel]