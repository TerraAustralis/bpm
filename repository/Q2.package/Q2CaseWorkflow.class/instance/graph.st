graph
graph
  "Lazily generate the workflow graph.
	We regenerate it if the model has newer transactions."

  | id format |
  (case == graphCase and: [ txnMarker = self model txnMarker ])
    ifFalse: [ 
      graph := Q2WorkflowGraph for: case.
      id := case id.
      format := self settings graphFormat.
      graph generateDocument: id type: format.
      graphCase := case.
      txnMarker := self model txnMarker ].
  ^ graph