accessing
reader: aReader

	reader _ aReader.
	batchSize ifNotNil: [ "this will refresh reader so calling size does not matter (it refreshes too)"
		(aReader respondsTo: #pageSize)
			ifTrue: [aReader pageSize: batchSize]].
	self flag: #q2todo.
	readerSize _ reader size. "we don't want to do this but..."
	self clear