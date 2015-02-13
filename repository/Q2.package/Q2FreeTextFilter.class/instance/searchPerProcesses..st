filtering
searchPerProcesses: processes
	"Perform the free text search in all the given processes (in parallell).
	Return all hits per Process in a Dictionary."

	| found resultQueue |
	resultQueue := SharedQueue new.
	errorMessage := ''.
	processes do: [:process |
		[ [ resultQueue nextPut: process -> (process searchIndex: freetext) ]
			on: Error 
			do: [ :error | 
				errorMessage := error messageText.
				resultQueue nextPut: process -> #() ] ] fixTemps; fork ].
	found := Dictionary new.
	processes do: [:proc | | ass |
		ass _ resultQueue next.
		found at: ass key put: ass value].
	^found