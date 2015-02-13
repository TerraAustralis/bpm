synch
canAccess: aProcessOrObject

	^processes includes: (
		aProcessOrObject isProcess
			ifTrue: [aProcessOrObject]
			ifFalse: [aProcessOrObject process])