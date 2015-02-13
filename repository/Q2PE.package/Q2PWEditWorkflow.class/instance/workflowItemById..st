unused
workflowItemById: idString

	| id |

	id := UUID fromString: idString.
	
	^ (self process workflow findStageById: id) 
			ifNil: [ self process workflow findTransitionById: id ]