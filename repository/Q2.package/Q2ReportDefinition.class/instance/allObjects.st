as yet unclassified
allObjects
	| objects |
	objects := (self model findOwnerProcessFor: self)
		ifNotNilDo: [:process | selector allObjectsFrom: process]
		ifNil: [selector allObjectsFromModel: self model].

	^filter
		ifNil: [objects]
		ifNotNil: [filter filter: objects]