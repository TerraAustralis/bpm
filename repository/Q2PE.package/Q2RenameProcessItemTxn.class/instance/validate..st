accessing
validate: changeToName
 
	( item name = changeToName ) ifTrue:[ self invalidBecause: 'No change' ].

	( changeToName isEmpty ) ifTrue:[ self invalidBecause: 'New name was empty' ].

	(item isStage and: [ (item workflow findStageNamed: changeToName) notNil ]) 
		ifTrue:[ self invalidBecause: 'Stage named ', changeToName, ' already exists.' ].

	(item isTransition and: [ (item from workflow findTransitionNamed: changeToName) notNil ]) 
		ifTrue:[ self invalidBecause: 'Transition named ', changeToName, ' already exists.' ].