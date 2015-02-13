initialization
initialize

	super initialize.
	children _ OrderedCollection new.
	nodes _ Dictionary new.
	edges _ Dictionary new.
	directed _ false.
	currentGraphReceiver _ self.
	currentNodeStyle _ GraphVizStyle new.
	currentEdgeStyle _ GraphVizStyle new.