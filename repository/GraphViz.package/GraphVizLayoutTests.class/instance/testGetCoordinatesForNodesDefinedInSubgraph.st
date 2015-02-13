as yet unclassified
testGetCoordinatesForNodesDefinedInSubgraph

	| node |
	graph subgraphDo: [node _ graph add: #A].
	graph doLayout.
	
	self should: [node x > 0].
	self should: [node y > 0].
	self should: [node height > 0].
	self should: [node width > 0]