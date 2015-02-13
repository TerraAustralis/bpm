as yet unclassified
undo

	self stage workflow addStage: self stage.
 
	transitions do: [ :t | t undo ].

 	self setSelection: self stage