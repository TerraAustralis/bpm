filtering
filterProcesses: processes
	"Filter the list of processes." 

	^predicates inject: processes into: [:procs :p | p filterProcesses: procs]