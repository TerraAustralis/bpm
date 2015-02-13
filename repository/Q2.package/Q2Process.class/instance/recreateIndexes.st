indexing
recreateIndexes
	"Currently 'anObject' can only be a Case."

	self model useIndexing 
		ifTrue: [
			self deleteIndexFile. 
			cases do: [ :each | self addToIndex: each ] ]
		ifFalse: [ Q2Log debug: 'Indexing is disabled, indexes won''t be recreated' ]