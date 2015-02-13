accessing
reconnectIn: aModel
	"Find the case to modify. Here we can set the target."
	| found |
	super reconnectIn: aModel.
	
	found := aModel processes detect:[ :p | p id =  item ] ifNone: [nil].
 	found ifNil: [ found _ aModel findTransitionById: item ].
 	found ifNil: [ found _ aModel findStageById: item ].
 	
	found ifNotNil: [ item := found ].