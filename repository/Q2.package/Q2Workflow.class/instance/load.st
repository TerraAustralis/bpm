sample
load
	| s1 s2 s3 s4 |
	self name: 'Workflow'.
	s1 := self newStage: 'Inbox'.
	s2 := self newStage: 'Analyze'.
	s3 := self newStage: 'Working'.
	s4 := self newStage: 'Done'.
	s4 isClosed: true.
	s1 newTransition: 'Start analysis' to: s2.
	s2 newTransition: 'Begin working' to: s3.
	s3 newTransition: 'Go back to analysis' to: s2.
	s3 newTransition: 'Work finished' to: s4.
	s3 newTransition: 'Work failed' to: s4.
	s2 newTransition: 'No work needed' to: s4.
	s4 newTransition: 'Reopen to analysis' to: s2