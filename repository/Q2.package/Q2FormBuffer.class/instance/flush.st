read and write
flush
	"Flush all values to the target, but only those which changed and have a field with corresponding key. We also make sure the form is added if missing in target."

	| t |
	t := self target.
	t holdsForms ifTrue: [
		(t hasForm: form) ifFalse: [t addForm: form]].
	form fieldsDo: [ :field | 
		value at: field ifPresent: [:val |  field storeValue: val target: t ].
	].
	value isEmpty ifFalse: [
		self target modified].
	originalValues := Dictionary new.