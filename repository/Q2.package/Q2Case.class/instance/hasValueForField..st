forms
hasValueForField: aField
	"Does the case have an entered value in the given field?"

	^fieldValues includesKey: aField