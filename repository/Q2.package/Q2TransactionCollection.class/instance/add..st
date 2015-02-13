caching
add: aTxn

	(aTxn respondsTo: #ageInSeconds) ifFalse: [ self errorImproperStore ].

	super add: aTxn.

	lastCreatedSeconds := aTxn createdSeconds.
	self size = 1 ifTrue: [ firstCreatedSeconds := lastCreatedSeconds ].