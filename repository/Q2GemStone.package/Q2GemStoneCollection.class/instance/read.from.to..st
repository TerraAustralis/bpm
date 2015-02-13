methods
read: anIndex from: start to: stop

	| subset index startHash stopHash |
	index := indexes at: anIndex.
	startHash := index indexHashForIndexObject: start.
	stopHash := index indexHashForIndexObject: stop.
	subset := self select: [:each |
		(index indexHashFor: each) between: startHash and: stopHash].
	^self subset: subset read: index