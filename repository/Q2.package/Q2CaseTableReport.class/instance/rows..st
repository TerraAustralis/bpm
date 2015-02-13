as yet unclassified
rows: aCollectionOrReader
	
	| toShow |
	(aCollectionOrReader size <= 100 or: [aCollectionOrReader isCollection])
		ifTrue: ["normal batched list"
			batchedList := WABatchedList new.
			batchedList batchSize: numberOfCases.
			toShow := self readCheck: aCollectionOrReader asOrderedCollection.
 
			super rows: toShow]
		ifFalse: ["special batched list which does readChecks on the fly"
			batchedList := Q2BatchedList new.
			self sortColumn: nil.
			batchedList batchSize: numberOfCases.
			batchedList filterBlock: [:case | self session currentUser readCheck: case ].
			self flag: #q2todo. "ehrm next line?"
			super rows: aCollectionOrReader].
	^batchedList