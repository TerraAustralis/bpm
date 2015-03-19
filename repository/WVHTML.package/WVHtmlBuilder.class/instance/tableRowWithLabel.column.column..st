tables
tableRowWithLabel: anObject column: aBlock column: anotherBlock
	self tableRow: [
		self cssClass: 'label'.
		self tableData: anObject.
		self tableData: aBlock; tableData: anotherBlock]