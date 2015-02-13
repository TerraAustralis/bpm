actions
findCaseViewFor: aCase
	"Find component for given case or return nil."

	^casesSection children detect: [:each |
		each isCaseComponent and: [each case = aCase]] ifNone: [nil]