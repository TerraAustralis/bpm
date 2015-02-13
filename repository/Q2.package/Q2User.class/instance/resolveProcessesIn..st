mirror
resolveProcessesIn: aModel
	"Used when building mirrors."

	| oldProcesses |
	oldProcesses := processes.
	processes := OrderedCollection new.
	oldProcesses do: [:pid |
		(aModel findObjectById: pid)
			ifNotNilDo: [:p | processes add: p]]