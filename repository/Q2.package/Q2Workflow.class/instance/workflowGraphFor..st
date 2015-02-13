graphviz
workflowGraphFor: aCase 
	"Construct a GraphViz object for given case.
	We include names for nodes and labels.
	We also mark start and end stages in different colors."

	| graph stageStyle transitionStyle style availableTransitions |
	graph := GraphViz new.
	graph beDirected; name: self name.
	stageStyle := {(#shape -> #ellipse). (#fontsize -> 12). (#style -> #filled)}.
	graph add: #node with: stageStyle.
	transitionStyle := { (#arrowsize -> 1.2). (#fontsize -> 10) }.
	graph add: #edge with: transitionStyle.
	stages do:  [:stage |
		style := Dictionary new.
		style at: #fillColor put: (self colorForStatus: stage graphStatus).
		stage == aCase stage ifTrue: [style at: #peripheries put: 2; at: #color put: #red].
		graph add: stage name with: style associations].
	availableTransitions := aCase availableTransitionsFor: self currentUser.
	self transitionsDo:  [:trans |
		style := Dictionary new.
		style at: #label put: trans name.
		(availableTransitions includes: trans) ifTrue: [style at: #color put: #green].
		graph add: trans from name -> trans to name with: style associations].
	^graph