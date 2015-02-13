building Gjallar commands
buildAddUsers
	"build a string which contains commands to add users to the process.
	Actually the process is added to the users :-)"

	| commands procName |
	procName := process first processName.
	commands := WriteStream on: (String new: 300).
	users  do: 
			[:user| 
			commands
				nextPutAll: '(self findUserNamed: ';
				nextPutAll: user  surroundedBySingleQuotes;
				nextPutAll: ') addProcess: ';
				nextPutAll: '(self findProcessNamed:  ';
				nextPutAll: procName surroundedBySingleQuotes;
				nextPutAll: ').';
				cr].
	^commands contents