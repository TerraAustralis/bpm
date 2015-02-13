layout
doLayout

	| layout graphHeight graphWidth |
	layout _ self asLayoutCoordinates.
	
	graphWidth _ (layout first third asNumber * self class pointsPerInch) asNumber rounded.
	graphHeight _ (layout first fourth asNumber * self class pointsPerInch) asNumber rounded.
	
	extent _  graphWidth @ graphHeight.
	
	self layoutNodes: (layout select: [:each | each first = #node]).
	self layoutEdges: (layout select: [:each | each first = #edge]).