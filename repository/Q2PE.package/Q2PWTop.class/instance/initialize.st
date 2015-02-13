as yet unclassified
initialize

	super initialize.
	controller := Q2PWProcessActionsController new.
	processSelectorComponent := Q2PWProcessSelector parent: self.
	editors := Dictionary new.
	graphs := Dictionary new.