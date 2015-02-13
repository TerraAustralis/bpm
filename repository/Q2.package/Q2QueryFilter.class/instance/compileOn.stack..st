compilation
compileOn: stream stack: filterStack
	"Write the boolean expression for the filter. The optional expression is regular Smalltalk
	and can use p1, p2 etc to refer to the predicates like this:

		'{1} and: [{2}]'

	...where {1} refers to predicate 1 etc.
	If no expression is set we generate a conjunction with predicates sorted by ranking:

		'(p1) and: [(p2) and: [(p3)]]] etc'

	where each predicate generates its own Smalltalk code using 'case' as a local variable
	referring to the case."

	expression
		ifNotNil: [
			stream nextPutAll: (self processExpression:
				[:value |
					String streamContents: [:s |
						s nextPut: $(.
						(predicates at: value asNumber) compileOn: s stack: filterStack. 
						s nextPut: $)]])]
		ifNil: [
			stream nextPutAll: (filterStack conjunct: self predicatesRanked)]