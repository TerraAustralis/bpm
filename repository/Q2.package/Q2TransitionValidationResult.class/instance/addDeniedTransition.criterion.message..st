validation
addDeniedTransition: aTransition criterion: criterion message: msg
	| coll |
	coll := deniedTransitions at: aTransition ifAbsentPut: [OrderedCollection new].
	coll add: (Q2TransitionDenial transition: aTransition criterion: criterion message: msg)