session allocation
preallocateFreeSessions
	
	self critical: [
		| requiredSessionCount | 
		preallocationInProgress ifTrue: [ ^self ].
		self minimumFreeSessions <= freeSessions size ifTrue: [ ^self ].
		requiredSessionCount := self calculateRequiredSessionCount.
		requiredSessionCount > 0 ifTrue: [
			 self startPreallocationProcessFor: requiredSessionCount] ]