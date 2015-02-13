cases
findCaseNamed: aString
	"Return the case with this name. Should be in lower case.
	If none found, return nil."

	^self readCheck: (cases readUnique: #name at: aString)