html
image: urlString width: width height: height
	self attributeAt: 'width' put: width.
	self attributeAt: 'height' put: height.
	
	self image: urlString