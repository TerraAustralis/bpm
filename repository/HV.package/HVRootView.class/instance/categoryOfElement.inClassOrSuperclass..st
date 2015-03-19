initalize-release
categoryOfElement: selector inClassOrSuperclass: class
	"Find first category of selector up the superclass chain."

	^class ifNotNil: [
		^(class organization categoryOfElement: selector)
			ifNil: [self categoryOfElement: selector inClassOrSuperclass: class superclass]]