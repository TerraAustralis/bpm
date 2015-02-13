as yet unclassified
apply

	newProcess := oldProcess copyPrototypeWithoutCases.
	newProcess name: newName.

	self model addProcess: newProcess.