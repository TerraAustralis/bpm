building
addComponentWithCache: aVal
	"Create a child component and give it the correct cache value."

	| child |
	child := field field asComponentIn: self.
	child basicCache: aVal.
	^children add: child