forms
keepForms: formsToKeep
	"Remove all that are not in formsToKeep."

	forms removeAll: (forms difference: formsToKeep)