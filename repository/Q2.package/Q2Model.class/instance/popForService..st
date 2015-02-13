services
popForService: aService
	| queue result |
	serviceQueues ifNil: [^nil].
	queue := serviceQueues at: aService ifAbsent: [^nil].
	queue size = 0 ifTrue: [^nil].
	self commit: [ result := queue pop].
	^result