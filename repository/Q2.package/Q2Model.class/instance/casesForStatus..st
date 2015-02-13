cases
casesForStatus: aStatus
	"Return a reader for the cases with a given status."

	^cases where: [:r | r read: #status at: aStatus]
		orSelect: [:each | each status = aStatus]