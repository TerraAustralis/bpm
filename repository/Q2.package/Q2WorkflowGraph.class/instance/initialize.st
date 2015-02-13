as yet unclassified
initialize
	graph := GraphViz new.
	"make sure we using a proper output path"
	graph generator outputPath: self outputPath.
	graph beDirected; name: model name.
	graph add: #node with: self stageStyle.
	graph add: #edge with: self transitionStyle.
	self makeGraph.