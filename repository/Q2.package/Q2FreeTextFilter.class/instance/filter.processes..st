filtering
filter: aReader processes: processes
	"First we perform the free text search in all the given processes (in parallell).
	Then when all those results are collected we calculate the intersection with
	<aReaderOrCollection>. We guess that the cases found using freetext are fewer
	than the ones found in the reader - and the call to #intersection will lead
	to one #includes: call per case, which should be quite fast most of the time."

	freetext isEmptyOrNil ifTrue: [^aReader].
	^(self searchProcesses: processes) intersection: aReader