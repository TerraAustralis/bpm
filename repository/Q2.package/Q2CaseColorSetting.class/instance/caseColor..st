accessing
caseColor: aCase
	"return color code for given case"

	aCase isNew ifTrue: [^'lightcoral'].
	aCase isOpen ifTrue: [^'lightgrey'].
	aCase isClosed ifTrue: [^'lightgreen'].
"	^ codes at: aCase stage name asSymbol ifAbsent: [ self defaultColor ]."