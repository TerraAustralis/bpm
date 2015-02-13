process
copyToProcess: aProcess with: copier
	| copy |
	copy := self copy process: aProcess; yourself.
	copier references at: self put: copy.
	^copy