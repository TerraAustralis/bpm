tests
swikify: aString
	"Helper method."

	^((WBHtmlFormatter base: 'http://www.garble.com/' model: self) swikify: aString builder: self builder) render