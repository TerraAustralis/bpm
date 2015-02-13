sample
loadDemoSoftwareSupport2
	|  inbox working solved closed rejected pending |

	self name: 'Workflow'.
	inbox := self newStage: 'Inbox'.
"	inbox addGatekeeper: (self process findUserNamed: '_oden'); addGatekeeper: (self process findUserNamed: '_tor')."
	rejected := self newStage: 'Rejected'.
	working := self newStage: 'Working'.
	pending := self newStage: 'Pending'.
	solved := self newStage: 'Solved'.
	closed := self newStage: 'Closed'.

	closed isClosed: true.
	rejected isClosed: true.

	inbox newTransition: 'Start working' to: working.
	inbox newTransition: 'Reject' to: rejected.
	
	working newTransition: 'Awaiting feedback' to: pending.
	pending newTransition: 'Continue work' to: working.

	working newTransition: 'Solve' to: solved.
	solved newTransition: 'Not accepted' to: working.
	solved newTransition: 'Accepted' to: closed