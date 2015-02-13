accessing
batchSize: aNumber
	batchSize _ aNumber.
	reader ifNotNil: [reader pageSize: batchSize]