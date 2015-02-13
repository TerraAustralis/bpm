compilation
collectValues
	"Collect all the values from the filters."

	values _ nil.
	filters do: [:filter | filter collectValuesFor: self].
	^values