tables
tableRowWith: aBlock with: anotherBlock
	self tableRow: [ self tableData: aBlock; tableData: anotherBlock]