validation
isNewProcessNameInvalid

	^ newProcessName isEmpty or: [ 
		(self model processes collect: [ :p | p name ]) includes: newProcessName
	]