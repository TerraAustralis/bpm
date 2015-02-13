graphing
subgraph: anObject do: aBlock

	| subgraph |
	subgraph _ currentGraphReceiver addNewSubgraph: anObject.
	currentGraphReceiver _ subgraph.
		
	[aBlock value] ensure: [currentGraphReceiver _ self]