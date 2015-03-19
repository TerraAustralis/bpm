html
image: urlString
	self attributeAt: 'src' put: urlString.
	
	^self tag: #img