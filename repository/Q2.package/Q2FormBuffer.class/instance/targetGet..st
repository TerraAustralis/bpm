read and write
targetGet: field
	self assert: [ field isKindOf: Q2Field ].
	(form includesField: field) ifFalse: [self error: 'Field not found in form'].
	^ field valueFromTarget: self target ifAbsent: [field defaultValue]