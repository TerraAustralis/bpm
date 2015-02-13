accessing
numberOfCases
	"If not set, fall back on general setting."

	^numberOfCases ifNil: [self currentUserSettings maxCasesInTable]