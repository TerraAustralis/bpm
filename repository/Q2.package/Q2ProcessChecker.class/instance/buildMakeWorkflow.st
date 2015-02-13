building Gjallar commands
buildMakeWorkflow
	"build a string which contains all names as temporary variables"

	| commands |
	commands := WriteStream on: (String new: 100).
	commands
		nextPutAll: 'wflow := process workflow';
		nextPutAll: '.'; cr;
		nextPutAll: 'wflow name: ';
		nextPutAll: 'Workflow' surroundedBySingleQuotes;
		nextPutAll: '.'; cr;
"now remove the stages which come from the prototype"
		nextPutAll: 'stage := wflow stageNamed: ''Inbox''.'; cr;
		nextPutAll: 'stage removeTransitionNamed: ''Start working''.'; cr;
		nextPutAll: 'stage := wflow stageNamed: ''Working''.'; cr;
		nextPutAll: 'stage removeTransitionNamed: ''Case done''.'; cr;
		nextPutAll: 'wflow removeStageNamed: ''Working''.'; cr;
		nextPutAll: 'wflow removeStageNamed: ''Done''.'; cr;
		nextPutAll: 'wflow removeStageNamed: ''Inbox''.'; cr;
		cr.
	^commands contents