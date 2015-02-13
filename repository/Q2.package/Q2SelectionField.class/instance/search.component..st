rendering
search: aString component: fc
	"Search for partial string. If only one object is found, return it, otherwise nil.
	If we find more than 20 we return those and show an ellipsis."

	| search hits values |
	fc stateAt: #searchString put: aString.
	aString isEmpty ifTrue: [^nil].
	search := aString asLowercase.
	values := self searchValuesForFieldComponent: fc.

"	Transcript show: 'Search: ', (Time millisecondsToRun: ["
	hits := self from: values select: [:each | each searchString asLowercase beginsWith: search] max: 20"]) printString; cr".
	fc stateAt: #filteredItems put: hits.
	^hits size = 1 ifTrue: [hits first] ifFalse: [nil]