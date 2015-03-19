as yet unclassified
test3

	self assert: ((self swikify: 'A *link* and an aliased *This is the shown text|link*') = '<html><head></head><body><p>A <a href="http://www.garble.com/link">link</a> and an aliased <a href="http://www.garble.com/link">This is the shown text</a></p></body></html>')