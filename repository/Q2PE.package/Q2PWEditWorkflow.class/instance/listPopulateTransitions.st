building tables
listPopulateTransitions

	| list |
 
	list := self process workflow transitions asOrderedCollection.

	(selectedStageOrTransition notNil and: [ selectedStageOrTransition isStage ])	
		ifTrue: [ 
			list := (list select: [ :trans | selectedStageOrTransition = trans to ])	 , 
					(list select: [ :trans | selectedStageOrTransition = trans from ])	
		].

	transitions rows: list.