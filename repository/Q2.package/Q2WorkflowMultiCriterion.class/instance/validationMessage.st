validation
validationMessage
	^'at least one of the following criteria must be met:
', (String streamContents: [:s | criteria do: [:each | s nextPut: $-. s nextPutAll: each validationMessage;cr]])