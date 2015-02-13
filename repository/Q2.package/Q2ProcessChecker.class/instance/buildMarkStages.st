building Gjallar commands
buildMarkStages
	"build a string which marks the stages to the Workflow as Input Closed or New."

	| commands |
	commands := WriteStream on: (String new: 1000).
	states withIndexDo: 
			[:state :index | 
		state isEndstage ifTrue: [
			commands
				nextPutAll: 'sta';
				nextPutAll: index printString;
				nextPutAll: ' isClosed: true.';
				cr].
		state isNew ifTrue: [
			commands
				nextPutAll: 'sta';
				nextPutAll: index printString;
				nextPutAll: ' isNew: true.';
				cr].
"		state isInput ifTrue: [
			commands
				nextPutAll: 'sta';
				nextPutAll: index printString;
				nextPutAll: ' isClosed: true.';
				cr]."].
	^commands contents