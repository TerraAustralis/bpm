as yet unclassified
current
	^current ifNil: [self session currentUser reportDefinitions ifNotEmptyDo: [:coll | current := coll first]]