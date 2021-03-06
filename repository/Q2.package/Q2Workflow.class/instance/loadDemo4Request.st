sample
loadDemo4Request
	|  inbox working solved verified rejected analysis |
	self name: 'Workflow'.
	inbox := self newStage: 'Inbox'.
	analysis := self newStage: 'Analysis'.
	working := self newStage: 'Working'.
	solved := self newStage: 'Verify solution'.
	verified := self newStage: 'Closed'.
	rejected := self newStage: 'Rejected'.
	verified isClosed: true.
	rejected isClosed: true.
	inbox newTransition: 'Analyze' to: analysis.
	analysis newTransition: 'Start working' to: working.
	inbox newTransition: 'Start working' to: working.
	inbox newTransition: 'Reject' to: rejected.
	working newTransition: 'Solution proposed' to: solved.
	working newTransition: 'Reject' to: rejected.
	solved newTransition: 'Solution worked' to: verified.
	solved newTransition: 'Solution failed' to: working