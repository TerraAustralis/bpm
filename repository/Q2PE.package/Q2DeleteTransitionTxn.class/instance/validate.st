accessing
validate

	force == true ifTrue: [ ^ true ].
 
	self transition to incomingTransitions size > 1 ifFalse: [ ^ self invalidBecause: 'Cannot delete "',self transition displayType,':', self transition displayString , '"<br> because its destination would be isolated' ].

	^ true