as yet unclassified
testRequestView
	canvas := HVXHTMLCanvas request: #request view: #view.
	self assert: canvas request = #request.
	self assert: canvas view = #view