as yet unclassified
rootObject: aRootObject
	" I change the current rootObject to aRootObject. 
	  And update the visual elements. "
	rootObject := aRootObject.
	result := ''.
	self explorer rootObject: rootObject.
	self changed: #definition.
	self changed: #result.
	self changed: #buttonLabel.
	window ifNotNil: [window setLabel: self windowLabel].
	self explorer refresh.