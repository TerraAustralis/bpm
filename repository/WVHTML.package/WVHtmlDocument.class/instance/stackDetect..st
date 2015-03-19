stack operations
stackDetect: aBlock
	"Traverse down the stack to find a specific element."

	| element |
	stack size to: 1 do: [:i |
		element _ stack at: i.
		(aBlock value: element) ifTrue: [^element]].
	^nil