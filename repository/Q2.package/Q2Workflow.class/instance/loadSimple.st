sample
loadSimple
	| s1 s2 s3 |
	self name: 'Workflow'.
	s1 := self newStage: 'Inbox'.
	s2 := self newStage: 'Working'.
	s3 := self newStage: 'Done'.
	s3 isClosed: true.
	s1 newTransition: 'Start working' to: s2.
	s2 newTransition: 'Case done' to: s3