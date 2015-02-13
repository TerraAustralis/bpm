filtering
filter: aCollection
	"We create a stack on the fly, add this single filter
	and let the stack evaluate the collection of cases.
	Return a subset of the collection."

	^self asStack filter: aCollection