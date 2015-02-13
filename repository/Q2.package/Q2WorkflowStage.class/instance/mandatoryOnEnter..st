criteria
mandatoryOnEnter: aFieldOrForm

	^enterCriteria detect: [:crit | crit isMandatory and: [crit target = aFieldOrForm]]
		ifNone: [self addMandatoryOnEnter: aFieldOrForm]