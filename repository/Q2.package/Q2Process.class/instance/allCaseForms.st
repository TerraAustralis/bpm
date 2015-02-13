accessing
allCaseForms
	"Return all known forms (our own and imported ones) that
	can be added to cases. We don't use concatenation because
	importedForms is a Set."

	| result |
	result := forms copy addAll: importedForms; yourself.
	tableCaseForms do: [:e | result remove: e ifAbsent: []].
	^result remove: createCaseForm ifAbsent:[];
		remove: modifyCaseForm ifAbsent:[];
		yourself