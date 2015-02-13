as yet unclassified
apply
 
	transitions do: [ :t | t apply ].
	self stage workflow removeStage: self stage.

	transitions size = 1 ifTrue:[ 	self setSelection: transitions first transition from ]
						ifFalse: [ self setSelection: nil ].