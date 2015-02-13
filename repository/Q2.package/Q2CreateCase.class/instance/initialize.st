initialize-release
initialize

	| toEdit |
	super initialize.
	description := 'Add a case to the system'.
	label := 'Create case'.

	editor := Q2MultiFormEditor parent: self.
	editor buttons saveText: 'Create case'; addSaveButton.
	self currentUser isReporter ifFalse: [
		editor buttons
			button: 'Create and edit'
			callback: [toEdit := editor target. editor save. self application editCase: toEdit]
			tooltip: 'Create and edit'].
	editor buttons button: 'Clear' callback: [editor clear] tooltip: 'Clear editor'.
	editor onAnswer: [:val | self addCase: val. editor clear].