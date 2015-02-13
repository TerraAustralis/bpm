compilation
indexForValue: aValue
	"Used to collect values and return indices when compiling from the predicates."

	values ifNil: [values := OrderedCollection new].
	values add: aValue.
	^values size