as yet unclassified
test7

	self assert: ((self swikify: 'The date today: <%DATE%> and base url: <%BASE%>') = ('<html><head></head><body><p>The date today: ', (Date today asString), ' and base url: http://www.garble.com</p></body></html>'))