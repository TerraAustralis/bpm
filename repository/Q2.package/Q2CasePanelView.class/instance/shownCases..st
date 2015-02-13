accessing
shownCases: anObject

	shownCases := anObject.
	self shownCases ifNotNilDo: [:cases | table rows: cases]