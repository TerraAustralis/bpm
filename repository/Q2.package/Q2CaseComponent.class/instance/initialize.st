initialize-release
initialize
	super initialize.
	editor := Q2MultiFormEditor parent: self.
	caseWorkflow := Q2CaseWorkflow parent: self.
	caseHistory := Q2CaseHistory parent: self.
	noteview := Q2NotebookView parent: self.
	alarmview := Q2AlarmView parent:self.
	"self registerForBacktracking - updating to states"