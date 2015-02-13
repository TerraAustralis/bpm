as yet unclassified
rootProxy: aRootProxy
	" I change the current rootObject to aRootObject. 
	  And update the visual elements. "
	rootProxy := aRootProxy.
	result := ''.
	self explorer rootObject: rootProxy target.
	self changed: #definition.
	self changed: #result.
	self changed: #buttonLabel.
	window ifNotNil: [window setLabel: self windowLabel].
	self explorer refresh.
	Q2Session releaseCurrent.