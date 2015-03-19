tables
tableRowWith: aBlock span: aNumber
	self tableRow: [ self attributeAt: 'colspan' put: aNumber. self tableData: aBlock ]