variables
withVar: varName do: aBlock
	"Temporarily work with a named variable.
	Return the variable or nil if it is not found."

	| elem |
	elem := self findVar: varName.
	elem ifNotNil: [^self withElement: elem do: aBlock].
	^nil