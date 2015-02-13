rendering
searchKey: aString component: fc

	| search hits keys |
	fc stateAt: #searchStringKeys put: aString.
	search := aString asLowercase.
	keys := (self keysForFieldComponent: fc).
	"Transcript show: 'Search: ', (Time millisecondsToRun: ["
	hits := self 
		from: keys 
		select: [:each | each searchString asLowercase beginsWith: search] 
		max: 20.
		"]) printString; cr"
	fc stateAt: #filteredKeys put: hits.
	^hits size = 1 ifTrue: [hits first] ifFalse: [nil]