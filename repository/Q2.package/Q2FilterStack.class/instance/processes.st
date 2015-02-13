querying
processes
	"Answer the list of processes that we allow.
	We take the non empty processes of the user
	and then let the filters filter that list."

	^filters
		inject: (self currentUser processes select: [:p | p isEmpty not])
		into: [:procs :f | f filterProcesses: procs]