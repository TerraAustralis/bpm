transitions
removeTransitionNamed: aName
	| toRemove |
	toRemove _ self findTransitionNamed: aName.
	toRemove ifNotNil: [toRemove remove]