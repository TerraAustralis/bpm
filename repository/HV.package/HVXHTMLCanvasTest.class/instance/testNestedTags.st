tests
testNestedTags
	| result |
	canvas head: [canvas body: []].
	result := ReadStream on: canvas render.
	self assert: (result next: 6) = '<head>'.
	self assert: (result next: 6) = '<body>'.
	self assert: (result next: 7) = '</body>'.
	self assert: (result next: 7) = '</head>'