soap services
gjallarStatus: anId
	self flag: #q2todo. "Hmmm, we don't deal with isNew here, what does the Jira plugin expect?"
	Q2Session sessionModelDo: [ :session :model |
		(model findCaseNamed: anId) ifNotNilDo: [:case | 
			(case stage isClosed) ifTrue: [^'Closed'] ifFalse: [^'Open']]].
	^'N/A'