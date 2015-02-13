building Gjallar commands
buildAddAdmins
	"build a string which contains commands to add administrators to the process"

	| commands procName |
	procName := process first processName.
	commands := WriteStream on: (String new: 300).
	admins do: 
			[:admin | 
			commands
				nextPutAll: 'process addAdministrator: (self findUserNamed: ';
				nextPutAll: admin surroundedBySingleQuotes;
				nextPutAll: ').';
				cr;
				nextPutAll: '(self findUserNamed: ';
				nextPutAll: admin surroundedBySingleQuotes;
				nextPutAll: ') addProcess: ';
				nextPutAll: '(self findProcessNamed:  ';
				nextPutAll: procName surroundedBySingleQuotes;
				nextPutAll: ').';
				cr].
	^commands contents