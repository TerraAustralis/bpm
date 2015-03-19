testing
nooneSet
	"Is none of the previous radios set to true including me?"

	^previous ifNil: [value not]
		ifNotNil: [previous nooneSet and: [value not]]