as yet unclassified
onGraphUserSelected: workflowItem update: updater

	self selectedStageOrTransition: workflowItem.
 
	updater element id: self contentId ; render: [:html | self updateContentOn: html ]