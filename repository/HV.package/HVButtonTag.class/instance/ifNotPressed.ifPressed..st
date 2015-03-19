callbacks
ifNotPressed: aBlock ifPressed: anotherBlock
	self isPressed ifFalse: aBlock ifTrue: anotherBlock