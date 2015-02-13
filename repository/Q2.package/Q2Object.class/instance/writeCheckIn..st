permissions
writeCheckIn: aProcess 
	"Here we have to wrap the object into something that knows the process"

	| wrapper |
	wrapper := (Q2ImportedObjectWrapper wrap: self) process: aProcess.
	^self writeCheck: wrapper