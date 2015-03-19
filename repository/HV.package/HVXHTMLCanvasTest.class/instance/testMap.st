tests
testMap
	canvas map: [].
	self assertTagName: #map.
	self
		should: [canvas map classes: {}]
		raise: HVAttributeError