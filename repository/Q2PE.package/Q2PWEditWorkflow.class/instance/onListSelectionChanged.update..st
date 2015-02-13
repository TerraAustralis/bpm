as yet unclassified
onListSelectionChanged: workflowItem update: updater

	"| workflowItem |
	workflowItem := (process workflow findStageById: id) 
			ifNil: [ process workflow findTransitionById: id ]."


	
	self selectedStageOrTransition: (selectedStageOrTransition = workflowItem 
		ifTrue: [ nil ] ifFalse: [ workflowItem ]).

	self onListChangedDoGraphFocusUpdate: updater.
 
	self onListChangedDoListUpdate: updater