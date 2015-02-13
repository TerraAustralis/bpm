rendering-columns
renderTransitionFor: stage on: html

	self selected isTransition ifTrue: [ 

		self selected from = stage ifTrue:[  html strong: 'From' ]. 
		self selected to = stage ifTrue:[  html text: 'To (', self selected displayString, ')' ]. 

	].

	self selected isStage not ifTrue: [ ^ self ].

	self selected = stage ifTrue:[ ^ html strong: 'From' ].

	(self selected outgoingTransitions detect: [ :t | t to = stage ] ifNone: [nil] )  
	ifNotNilDo: [ :transition |
		html strong: 'To'.
		html text: ' (', transition displayString, ')'.
	]
	ifNil: [
		html anchor
				onClick: 
					(html evaluator
						callback: [ :s | self controller doNewTransitionFrom: self selected to: stage.
									   self onListChangedDoListUpdate: s ]);
				onClick: 
					(html evaluator
						callback: [ :s |   self onSuccessDoFullUpdate: s ]);
				with:  '(new to)' 
 	].