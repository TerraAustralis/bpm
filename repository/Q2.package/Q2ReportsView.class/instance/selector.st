as yet unclassified
selector
	^selector ifNil:[(current ifNotNil: [current selector]) ifNil: [Q2ReportSource subclasses anyOne]]