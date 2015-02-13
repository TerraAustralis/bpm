building Gjallar commands
buildAddTransitions
	"build a string which adds the transitions to the Workflow and assigns them to the temps."

	| commands |
	commands := WriteStream on: (String new: 1000).
	states withIndexDo: 
			[:state :stateIndex | 
			state transitionsFromMe do: 
					[:transition | 
					| targetTempName |
					targetTempName := (states indexOf: transition target ) 
								printString.
					commands
						nextPutAll: 'sta';
						nextPutAll: stateIndex printString;
						nextPutAll: ' transition: ';
						nextPutAll: transition transitionName surroundedBySingleQuotes;
						nextPutAll: ' to: sta';
						nextPutAll: targetTempName;
						nextPutAll: '.';
						cr]].
	^commands contents