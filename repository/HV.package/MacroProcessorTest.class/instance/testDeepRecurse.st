as yet unclassified
testDeepRecurse

	| processor result |
	"A processor that either just encloses in parentheses, or expands into a new
	macro that in turn will duplicate its contents."
	processor := MacroProcessor
					block: [:x | x size > 5
								ifTrue: ['(', x, ')']
								ifFalse: ['[', x, x, ']']]
					between: '[' and: ']'.

	"deep and recursive:
		Only the inner most is doubled (and doubled yet again) to be larger than 5." 	
	result := processor process: '[dab] [dooooo] [tiny[itsy]] [x[y[z]]]'.
	self assert: result = '(dabdab) (dooooo) (tiny(itsyitsy)) (x(y(zzzzzzzz)))'.

	"only recursive:
		The result of doubling is not processed in turn thus leaving unprocessed macros like [dabdab] in the result.
		In the last example the outer macro y also get a chance to double."
	processor deep: false.
	result := processor process: '[dab] [dooooo] [tiny[itsy]] [x[y[z]]]'.
	self assert: result = '[dabdab] (dooooo) (tiny[itsyitsy]) (x[y[zz]y[zz]])'.

	"not deep nor recursive:
		Only the outer most macros are processed, and not in turn."	
	processor recurse: false.
	result := processor process: '[dab] [dooooo] [tiny[itsy]] [x[y[z]]]'.
	self assert: result = '[dabdab] (dooooo) (tiny[itsy]) (x[y[z]])'.

	"only deep:
		Almost like deep and recursive but note the last example where the expansion goes like:
			[x[y[z]]] -> (x[y[z]]) -> (x[y[z]y[z]]) -> (x(y[z]y[z])) -> (x(y[zz]y[zz])) ->
			(x(y[zzzz]y[zzzz])) -> (x(y[zzzzzzzz]y[zzzzzzzz])) -> (x(y(zzzzzzzz)y(zzzzzzzz)))"	
	processor deep: true.
	result := processor process: '[dab] [dooooo] [tiny[itsy]] [x[y[z]]]'.
	self assert: result = '(dabdab) (dooooo) (tiny(itsyitsy)) (x(y(zzzzzzzz)y(zzzzzzzz)))'