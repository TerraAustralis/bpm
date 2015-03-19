accessing
assertTagName: tagName 
	self tag with: [].
	self assert: self firstElement name = tagName