accessing
stateAt: aKey

	state ifNil: [^nil].
	^state at: aKey ifAbsent: [nil].