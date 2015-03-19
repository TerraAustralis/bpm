tests
testHtml
	| html |
	canvas html: [].
	html := self firstElement.
	self assert: self dom version = '1.0'.
	self assert: self dom encoding = 'UTF-8'.
	self assert: html name = #html.
	self assert: (html attributes at: 'xmlns') = canvas xmlns