tabs
addExtraTabs
	"Add extra tabs to the multiform editor that are not forms
	and that we want to show."

	caseHistory case: case.
	caseWorkflow case: case.
	editor addTab: caseHistory; addTab: caseWorkflow