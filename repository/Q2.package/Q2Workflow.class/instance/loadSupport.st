sample
loadSupport
	|  inbox analyze verifyAnalysis verifySolution performService solvedWithAction notSolved solvedWithoutAction |
	self name: 'Workflow'.
	inbox := self newStage: 'Inbox'.
	inbox addGatekeeper: (self process findUserNamed: '_oden'); addGatekeeper: (self process findUserNamed: '_balder').
	analyze := self newStage: 'Analyze'.
	verifyAnalysis := self newStage: 'Verify analysis'.
	verifySolution := self newStage: 'Verify solution'.
	performService := self newStage: 'Perform service'.
	performService addGatekeeper: (self process findUserNamed: '_mimer').
	solvedWithAction := self newStage: 'Solved with action'.
	performService addMandatoryOnExit: (self process findFormNamed: 'Service report').
	notSolved := self newStage: 'Not solved'.
	solvedWithoutAction := self newStage: 'Solved without action'.
	solvedWithoutAction isClosed: true.
	notSolved isClosed: true.
	solvedWithAction isClosed: true.
	inbox newTransition: 'Start analysis' to: analyze.
	analyze newTransition: 'Analysis done' to: verifyAnalysis.
	analyze newTransition: 'Estimated unsolvable' to: notSolved.
	analyze newTransition: 'Decided not to solve' to: notSolved.
	verifyAnalysis newTransition: 'Solution proposed' to: verifySolution.
	performService newTransition: 'Service done' to: solvedWithAction.
	verifySolution newTransition: 'Solution worked' to: performService.
	verifySolution newTransition: 'Solution worked without action' to: solvedWithoutAction.
	solvedWithoutAction newTransition: 'Reopen to analysis' to: analyze.
	performService newTransition: 'Reopen to analysis' to: analyze.
	notSolved newTransition: 'Reopen to analysis' to: analyze.
	solvedWithAction newTransition: 'Reopen to analysis' to: analyze.