as yet unclassified
swikify: aString
	"Helper method, used for tests."

	^((SwikiFormatter base: 'http://www.garble.com' model: self) swikify: aString builder: self builder) render