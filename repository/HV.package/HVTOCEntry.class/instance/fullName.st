entries
fullName
	| str |
	str := parent fullName.
	^(str isEmpty or: [str last = $/]) ifTrue: [str, name] ifFalse: [str, '/', name]