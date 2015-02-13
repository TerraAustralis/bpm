printing
displayString

	^self name isEmptyOrNil
		ifFalse: [self name]
		ifTrue: [from displayString, ' =&gt; ', to displayString]