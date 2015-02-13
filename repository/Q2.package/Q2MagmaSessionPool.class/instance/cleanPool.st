clearup/setup
cleanPool

	self critical: [
		freeSessions copy do: [:each | 
			(each respondsTo: #close) ifTrue: [[each close] on: Error do: [:ex | ]].
			freeSessions remove: each].
		usedSessions copy do: [:each | 
			(each respondsTo: #close) ifTrue: [[each close] on: Error do: [:ex | ]].
			usedSessions remove: each] ]