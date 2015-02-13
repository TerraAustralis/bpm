accessing
validate

	(from workflow findTransitionNamed: self newName) notNil
				ifTrue:[ ^ self invalidBecause: 'Transition "',self newName, '" already exists' ].