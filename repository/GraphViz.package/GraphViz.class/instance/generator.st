accessing
generator

	^ generator ifNil: [generator _ self generatorClass newFor: self]