indexing
addToIndex: anObject
	"Currently 'anObject' can only be a Case."

	self model useIndexing
		ifTrue: [
			self model push: anObject forService: Q2IndexingService ]
		ifFalse: [
			Q2Log debug: 'Not adding ', anObject asString, ' to index' ]