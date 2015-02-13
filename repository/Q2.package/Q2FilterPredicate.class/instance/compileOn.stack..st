compilation
compileOn: aStream stack: filterStack
	"Generate suitable code for extracting the input from the case and
	the actual value to compare to. Subclasses fill in code for actual function."

	self compileOn: aStream
		input: self inputCode
		parameter: 'values at: ', (filterStack indexForValue: value) asString, ')'

"	operator writeOn: aStream predicate: self stack: filterStack"