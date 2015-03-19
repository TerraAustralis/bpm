tests
setUp
	self canvas: (WriteStream on: String new).
	self tag: (self classToTest canvas: self canvas)