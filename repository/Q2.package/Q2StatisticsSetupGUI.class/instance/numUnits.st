accessing
numUnits

	(resolution = 'daily') ifTrue: [^7].
	(resolution = 'weekly') ifTrue: [^8].
	(resolution = 'monthly') ifTrue: [^6].
	self error: 'Invalid resolution'.