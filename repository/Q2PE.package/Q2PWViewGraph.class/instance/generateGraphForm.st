calculating
generateGraphForm 
 
	graph := Q2WorkflowGraph for: self process.
 
	graphForm := (PNGReadWriter createAFormFrom: (graph generateType: (self settings graphFormat asSymbol)) readStream contents) first.
 
	graph doLayout.
 
	^ graphForm