control
ifPressed: aBlock
	"Evaluate <aBlock> if this button was pressed -
	if the name of the button was submitted."

	^pressed ifTrue: [aBlock value]