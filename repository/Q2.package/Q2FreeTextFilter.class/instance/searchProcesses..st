filtering
searchProcesses: processes
	"Perform the free text search in all the given processes (in parallell).
	Return all hits as a Set. 
	#searchPerProcesses: returns a Dictionary with processes as keys,
	we aggregate all the values into a set "

	| result |
	result := Set new.
	(self searchPerProcesses: processes) values do: [ :each |
		result addAll: each ].
	^result