custom objects
removeProcessPrototype: aProcessPrototype

	Q2Log info: 'Process prototype removed: ', aProcessPrototype name.
	processPrototypes remove: (self removeObjectById: aProcessPrototype)