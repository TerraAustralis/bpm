as yet unclassified
named: fileName with: aBlock
	"Create a new log file and start logging with the code in aBlock."

	^self new open: fileName; block: aBlock; start