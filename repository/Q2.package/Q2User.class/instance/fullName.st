accessing
fullName
	| n |
	n _ person fullName.
	^n ifEmpty: [name] ifNotEmpty: [n]