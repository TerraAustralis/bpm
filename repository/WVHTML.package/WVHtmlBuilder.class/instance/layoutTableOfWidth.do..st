tables
layoutTableOfWidth: width do: aBlock
	self attributes width: width.
	self layoutTable: aBlock