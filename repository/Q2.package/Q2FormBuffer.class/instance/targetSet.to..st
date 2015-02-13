read and write
targetSet: field to: val
	self assert: [ field isKindOf: Q2Field ].
	"Only set in target if there is a field for given selector."
	(form includesField: field) ifFalse: [self error: 'Field not found in form'].
	^ field storeValue: val target: self target