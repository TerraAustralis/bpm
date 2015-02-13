accessing
stateAt: aKey put: aVal

	state ifNil: [state _ Dictionary new].
	^state at: aKey put: aVal