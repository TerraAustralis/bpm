sample
loadDemo4Bugs
	|  inbox working solved verified rejected |
	self name: 'Workflow'.
	inbox := self newStage: 'Inbox'.
	working := self newStage: 'Working'.
	solved := self newStage: 'Verify solution'.
	verified := self newStage: 'Closed'.
	rejected := self newStage: 'Rejected'.
	verified isClosed: true.
	rejected isClosed: true.
	inbox newTransition: 'Start working' to: working.
	inbox newTransition: 'Reject' to: rejected.
	working newTransition: 'Solution proposed' to: solved.
	working newTransition: 'Reject' to: rejected.
	rejected newTransition: 'Reopen' to: working.
	solved newTransition: 'Solution worked' to: verified.
	solved newTransition: 'Solution failed' to: working