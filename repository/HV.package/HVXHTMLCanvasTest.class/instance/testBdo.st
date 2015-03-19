tests
testBdo
	canvas bdo leftToRight; with: [].
	self assertTagName: #bdo.
	self
		shouldnt: [canvas bdo class: 'test']
		raise: HVAttributeError