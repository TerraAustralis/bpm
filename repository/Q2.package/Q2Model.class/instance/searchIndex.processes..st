indexing
searchIndex: aString processes: aCollection
	"Search all processes in parallell. return a Set of found cases."

	| resultQueue found |
	
	resultQueue := SharedQueue new.
	aCollection do: [:process | 
		[resultQueue nextPut: (process searchIndex: aString)] fixTemps 
			fork].
	found := Set new.
	aCollection size timesRepeat: [found addAll: resultQueue next].
	^found