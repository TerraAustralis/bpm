accessing
fullName

	^lastName ifEmpty: [name] ifNotEmpty: [name, ' ', lastName]