accessing
controller

	^ controller ifNil: [ self parent controller ]