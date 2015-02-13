actions
doCreateProcess 
	
		self controller doCreateProcessNamed: newProcessName.
		process := self model findProcessNamed: newProcessName.