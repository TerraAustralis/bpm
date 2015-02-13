synch
reconnectIn: aModel

	value := self reconnectObject: value in: aModel.
	originalValues := self reconnectObject: originalValues in: aModel.
	form := aModel findFormById: form