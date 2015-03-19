tables
tableRowWithLabel: anObject column: aBlock
	self tableRow: [
		self cssClass: 'label'.
		self tableData: anObject.
		self tableData: aBlock]