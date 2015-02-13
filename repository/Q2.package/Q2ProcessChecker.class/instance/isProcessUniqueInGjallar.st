testing
isProcessUniqueInGjallar
	| processName |
	Smalltalk at: #Q2Model
		ifAbsent: 
			[errorList add: 'We are not in Gjallar'.
			^false].
	processName := process first processName.
	(Q2Session current model findProcessNamed: processName) isNil 
		ifTrue: [^true]
		ifFalse: 
			[errorList add: 'The process name is not unique in Gjallar'.
			^false]