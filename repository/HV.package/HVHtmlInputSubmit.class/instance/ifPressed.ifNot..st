control
ifPressed: aBlock ifNot: anotherBlock
	"Evaluate <aBlock> if this button was pressed -
	if the name of the button was submitted.
	If not we evaluate <anotherBlock>."

	^pressed ifTrue: [aBlock value] ifFalse: [anotherBlock value]