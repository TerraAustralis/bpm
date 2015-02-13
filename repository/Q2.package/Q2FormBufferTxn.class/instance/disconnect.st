synch
disconnect
	super disconnect.
	formBuffer ifNotNil: [formBuffer disconnect]