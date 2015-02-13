as yet unclassified
validate

	self stage outgoingTransitions isEmpty ifFalse: [ ^ self invalidBecause: 'Outgoing transitions still exist from ', self stage name, '.' ].

	self stage isInbox ifTrue: [ ^ self invalidBecause: 'Cannot delete Inbox' ].
	
	^ true