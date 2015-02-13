as yet unclassified
validate: changeToName
 
	( item name = changeToName ) ifTrue:[ self invalidBecause: 'No change' ].

	( changeToName isEmpty ) ifTrue:[ self invalidBecause: 'New name was empty' ].


	(item workflow model findProcessNamed: changeToName) notNil 
		ifTrue:[ self invalidBecause: 'Process named "', changeToName, '" already exists.' ].