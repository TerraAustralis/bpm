filtering
evaluate: aCase
	"We create a stack on the fly, add this single filter and let the stack evaluate the case.
	Return true or false depending on if aCase comes through the filter."

	^self asStack evaluate: aCase