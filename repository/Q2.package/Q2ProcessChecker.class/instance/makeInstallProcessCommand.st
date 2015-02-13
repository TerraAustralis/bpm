building Gjallar commands
makeInstallProcessCommand
	"return the commandString necessary to install the process in Gjaller"

	| stream |
	stream := WriteStream on: (String new: 10000).
	stream
		nextPutAll: self buildTemps; cr;
		nextPutAll: '"Create the process"'; cr ;
		nextPutAll: self buildMakeProcess; cr;
		nextPutAll: '"Admins and users for the process"'; cr ;
		nextPutAll: self buildAddAdmins ; cr;
		nextPutAll: self buildAddUsers  ; cr;
		nextPutAll: '"Get the workflow of the new process."'; cr ;
		nextPutAll: self buildMakeWorkflow; cr;
		nextPutAll: '"Build stages for the workflow."'; cr ;
		nextPutAll: self buildAddStages; cr;
		nextPutAll: '"Mark stages as Closed or New."'; cr ;
		nextPutAll: self buildMarkStages; cr;
		nextPutAll: '"Create the transitions between the stages."'; cr ;
		nextPutAll: self buildAddTransitions .
	^stream contents