as yet unclassified
hasFieldNamed: aString
	self fieldsDo: [:each | each name = aString ifTrue: [ ^ true ]].
	^ false