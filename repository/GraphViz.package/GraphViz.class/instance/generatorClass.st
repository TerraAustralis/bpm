accessing
generatorClass

	^ generatorClass ifNil: [generatorClass _ self class defaultGeneratorClass]