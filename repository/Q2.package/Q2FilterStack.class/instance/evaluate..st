filtering
evaluate: aCase
	"Test a single case."

	filters isEmptyOrNil ifTrue: [^true].
	^self compiledBlock value: aCase