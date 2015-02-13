as yet unclassified
hasField: aField
	self fieldsDo: [ :each | each == aField ifTrue: [ ^ true ]].
	^ false