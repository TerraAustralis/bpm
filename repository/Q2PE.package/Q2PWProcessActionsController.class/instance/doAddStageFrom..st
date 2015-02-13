as yet unclassified
doAddStageFrom: anItem


	anItem isStage ifTrue: [ self doNewStageFollowingStage: anItem ].
 	anItem isTransition ifTrue: [ self doNewStageDividingTransition: anItem ].