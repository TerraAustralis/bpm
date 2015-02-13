check Process
checkRequiredStates
	| result |
	result := true.
	self hasExactlyOneProcess 
		ifFalse: 
			[result := false.
			errorList add: 'do not have exactly one process'].
	self hasExactlyOneInput 
		ifFalse: 
			[result := false.
			errorList add: 'do not have exactly one input'].
	self hasMinimumOneEndstage 
		ifFalse: 
			[result := false.
			errorList add: 'do not have at least one endstage'].
	^result