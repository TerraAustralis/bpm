calculating
graphItemFrom: q2Item

	 graph graphviz nodes and: graph graphviz edges do: [ :graphVizItem  |
		(q2Item id printString = (graphVizItem attributeAt: #q2id ifAbsent: [ ^ nil ])) ifTrue: [ ^ graphVizItem ]. 
	].

	 ^ nil