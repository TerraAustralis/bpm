accessing
status

	^self isClosed
		ifTrue: [#closed]
		ifFalse: [self isNew
					ifTrue: [#new]
					ifFalse: [ #open ]]