queries
messagesForInvalidTargets

	invalidTargets ifNil: [
		invalidTargets := IdentityDictionary new.
		self denialsDo: [:denial |
			denial targets do: [:target |
				(invalidTargets at: target ifAbsentPut: [OrderedCollection new])
					add: denial message]]].
	^invalidTargets