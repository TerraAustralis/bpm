accessing
clearForms
	"Clears all defined forms in this process."
	
	(forms includes: createCaseForm) ifTrue: [self createCaseForm: nil].
	(forms includes: modifyCaseForm) ifTrue: [self modifyCaseForm: nil].
	forms := OrderedCollection new.