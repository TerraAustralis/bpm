criteria
addMandatoryOnEnter: aFieldOrForm
	self isInbox ifTrue: [self error: 'Can not add enter criteria on inbox!'].
	self addEnterCriterion: (aFieldOrForm mandatoryCriterion)