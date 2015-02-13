forms
newFormNamed: aString

	^self addForm: ((Q2Form named: aString) label: aString; yourself)