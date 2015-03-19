elements
nextVarName
	"We take our own numeric id and tack on a numeric id for our elements."

	^(id fullPrintString, '-',  (elements size + 1) fullPrintString) asSymbol