building Gjallar commands
buildAddStages
	"build a string which adds the stages to the Workflow and assigns them to the temps."

	| commands |
	commands := WriteStream on: (String new: 1000).
	states withIndexDo: 
			[:state :index | 
			commands
				nextPutAll: 'sta';
				nextPutAll: index printString;
				nextPutAll: ' := wflow stageNamed: ';
				nextPutAll: state stateName surroundedBySingleQuotes;
				nextPutAll: '.';
				cr].
	^commands contents