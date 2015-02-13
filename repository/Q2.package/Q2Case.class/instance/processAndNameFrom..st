rendering
processAndNameFrom: aProcess

	^aProcess == self process
		ifTrue: [self name] ifFalse: [self process name, ' ', self name]