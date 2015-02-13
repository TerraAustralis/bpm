accessing
entry
	^self directory entryAt: localFileName ifAbsent: [nil]