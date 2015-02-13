transitions
transition: aName to: aStage

	^transitions detect: [:t | t name = aName] ifNone: [self newTransition: aName to: aStage]