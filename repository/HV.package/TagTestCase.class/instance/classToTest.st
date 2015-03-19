accessing
classToTest
	| class |
	class := self class name.
	class := class copyFrom: 1 to: class size - 4.
	^ Smalltalk classNamed: class