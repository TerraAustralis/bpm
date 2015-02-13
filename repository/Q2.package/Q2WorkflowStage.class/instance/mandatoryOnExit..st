criteria
mandatoryOnExit: aFieldOrForm

	^exitCriteria detect: [:crit | crit isMandatory and: [crit target = aFieldOrForm]]
		ifNone: [self addMandatoryOnExit: aFieldOrForm]