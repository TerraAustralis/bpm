compilation
collectValuesFor: filterStack
	"Collect values from predicates. We need to take care of the optional
	expression because it may produce a different order than by rank."

	expression
		ifNotNil: [
			self processExpression: [:value |
				filterStack indexForValue: (predicates at: value asNumber) value.
				'']]
		ifNil: [
			self predicatesRanked do: [:p |
				filterStack indexForValue: p value]]