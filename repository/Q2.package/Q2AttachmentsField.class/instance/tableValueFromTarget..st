value and cache
tableValueFromTarget: aTarget
	(aTarget attachments size = 0) ifTrue: [^'No attachments'].
	(aTarget attachments size = 1) ifTrue: [^aTarget attachments anyOne localFileName].
	^ aTarget attachments size asString, ' attachments'.