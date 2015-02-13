filtering
filter: aReaderOrCollection processes: processes hits: previousFoundPerProcess
	"First we perform the free text search in all the given processes (in parallell).
	Then when all those results are collected we use an index based query to
	find the actual cases."

	| found |
	found := Set new.
	processes do: [:proc | found addAll: (previousFoundPerProcess at: proc ifAbsent: [#()])].
	^(aReaderOrCollection where: [:each | each id includesAnyOf: found]
						orSelect: [:each | found includes: each id]) asOrderedCollection