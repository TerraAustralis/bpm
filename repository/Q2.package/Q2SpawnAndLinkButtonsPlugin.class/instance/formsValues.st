accessing
formsValues
	^ self process forms select: [:f | f ~= self process createCaseForm ].