as yet unclassified
repeatString
	"returns repeat-interval, which is nil if repeat is off. If repeat is on, this is the number of days between repeats"
	repeat ifNil:[^ 'No'].
	repeat = 7 ifTrue:[^'Every week' ].
	repeat = 14 ifTrue:[^'Every other week'].
	^ 'Every {1} days' format:{repeat}.