cases
tableCaseForms
	"Return the table forms we can use.
	The first option should not really happen."

	^self processes
		ifEmpty: [Array with: self model defaultTableCaseForm]
		ifNotEmpty: [self processes gather: [:each | each tableCaseForms]]