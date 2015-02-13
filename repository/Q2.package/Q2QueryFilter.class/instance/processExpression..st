compilation
processExpression: aBlock
	"Process the boolean expression using syntax:
		'{1} and: [{2}]'
	...where {1} refers to predicate 1 etc.
	The block is evaluated for each predicate name."

	| processor |
	processor := Q2MacroProcessor new.
	processor
		block: aBlock
		startString:  '{'
		endString: '}'.
	^processor process: expression