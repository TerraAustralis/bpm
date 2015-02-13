field values
newValueAt: selectorOrId
	"Pick first found."

	| found |
	formValues do: [:each |
		found := each newValueAt: selectorOrId.
		found  ifNotNil: [^found]].
	^nil