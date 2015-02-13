as yet unclassified
doDeleteTransitionOrStage: item

	item isStage ifTrue:[ self doDeleteStage: item ].

	item isTransition ifTrue: [ self doDeleteTransition: item ].