external calls
findDotCommand
	| dir |

	dir := '/usr/local/bin/'.
	((FileDirectory on: dir) fileExists: 'dot') ifTrue: [ ^ ProgramPath := dir ].
	dir := '/usr/bin/'.
	((FileDirectory on: dir) fileExists: 'dot') ifTrue: [ ^ ProgramPath := dir ].

	^ self error: 'unable to find a dot command, do you have a Graphviz installed?'