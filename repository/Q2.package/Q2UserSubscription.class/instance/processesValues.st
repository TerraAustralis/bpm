accessing
processesValues
	" If user is nil, this is a temporary object created in the GUI that has not yet been saved"
	^user ifNotNil: [user processes] ifNil: [self session currentUser processes]