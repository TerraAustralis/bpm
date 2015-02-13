sample
loadDemoSoftwareSupport
	|  inbox analyze verifySolution performService solvedWithAction notSolved solvedWithoutAction more trash |

	self name: 'Workflow'.
	inbox := self newStage: 'Inbox'.
	inbox addGatekeeper: (self process findUserNamed: '_oden'); addGatekeeper: (self process findUserNamed: '_tor').
	more := self newStage: 'More info'.
	more isNew: true.
	trash := self newStage: 'Rejected'.
	analyze := self newStage: 'Analyze'.
	verifySolution := self newStage: 'Verify solution'.
	performService := self newStage: 'Perform service'.
	performService addGatekeeper: (self process findUserNamed: '_freja'); addGatekeeper: (self process findUserNamed: '_frej').
	solvedWithAction := self newStage: 'Solved with service'.
	notSolved := self newStage: 'Not solved'.
	solvedWithoutAction := self newStage: 'Solved without service'.
	solvedWithoutAction isClosed: true.
	notSolved isClosed: true.
	solvedWithAction isClosed: true.
	trash isClosed: true.
	inbox newTransition: 'Start analysis' to: analyze.
	inbox newTransition: 'Request more info' to: more.
	inbox newTransition: 'Reject' to: trash.
	more newTransition: 'Start analysis' to: analyze.
	more newTransition: 'Reject' to: trash.
	analyze newTransition: 'Solution proposed' to: verifySolution.
	analyze newTransition: 'Estimated unsolvable' to: notSolved.
	analyze newTransition: 'Decided not to solve' to: notSolved.
	performService newTransition: 'Service done' to: solvedWithAction.
	verifySolution newTransition: 'Solution worked without action' to: solvedWithoutAction.
	verifySolution newTransition: 'Solution worked' to: performService.
	solvedWithoutAction newTransition: 'Reopen to analysis' to: analyze.
	performService newTransition: 'Reopen to analysis' to: analyze.
	notSolved newTransition: 'Reopen to analysis' to: analyze.
	solvedWithAction newTransition: 'Reopen to analysis' to: analyze.