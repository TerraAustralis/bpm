as yet unclassified
showErrorList
	"show a list of all occurred errors"

	| errString cr |
	cr := Character cr asString.
	errorList isEmpty 
		ifFalse: [errString := 'Found errors: ' , cr]
		ifTrue: [errString := 'Process is ok '].
	errorList do: [:each | errString := errString , cr , each].
	self inform: errString