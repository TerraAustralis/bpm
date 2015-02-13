read and write
commit: field with: val
	"Save in Dictionary of values.
	If it is the same as the original we clear it from
	the value Dictionary. The target will not be modified until #flush is called."

	| fld |
	fld := field isSymbol ifTrue: [ self form fieldWithKey: field ] ifFalse: [field].
	originalValues at: fld ifPresent: [ :v | 
		v = val ifTrue: [ value removeKey: fld ifAbsent: []. ^self ]
	].
	value at: fld put: val.