instance creation
model: aModel between: startString and: endString
	^self new
		block: [:value | aModel expandMacro: value]
		startString: startString
		endString: endString