variables
findVar: aName
	"Find a named variable."

	^variables at: aName ifAbsent: [nil]