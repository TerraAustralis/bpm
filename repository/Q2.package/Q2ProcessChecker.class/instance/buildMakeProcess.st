building Gjallar commands
buildMakeProcess
	"build a string which contains commands to make a process and assings it to the temp process"

	| commands procName |
	procName := process first processName.
	commands := WriteStream on: (String new: 100).
	commands
		nextPutAll: 'process := self createProcess:  ';
		nextPutAll: procName surroundedBySingleQuotes;
		nextPutAll: ' fromPrototypeNamed: ''Simple prototype''.';
		cr.
	"Don't like this at all but it seems necessary to get several things imported"
	"Have to remove the stages which automatically come with this process"
	^commands contents