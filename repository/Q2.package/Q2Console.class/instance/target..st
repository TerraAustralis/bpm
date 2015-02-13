accessing
target: anObject

	target ~= anObject ifTrue: [self definition: nil].
	target := anObject