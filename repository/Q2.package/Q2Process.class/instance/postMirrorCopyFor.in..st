mirrors
postMirrorCopyFor: aMirror in: aNewModel
	"Self is a veryDeepCopy and we now have to prune
	stuff that should not be included and we also need
	to update the new model to have those things we need."

	model := aNewModel.
	
	importedUsers do: [:u | model mirrorAddUser: u].
	importedPersons do: [:u | model mirrorAddPerson: u].
	importedCategories do: [:c | model mirrorAddCategory: c].
	importedCustomObjectTypes do: [:cot | model mirrorAddCustomObjectType: cot].
	importedForms do: [:f | model mirrorAddForm: f].

	"cases prune based on permissions/filters, those that are left - add in model"
	cases do: [:case | model mirrorAddCase: case]

	"workflow check (if permissions for some reason prevents a copy)"
	"administrators is fine"
	"definedCategories is fine"
	"customeObjectTypes prune on permissions"
	"forms prune on permission"

	"importedUsers, importedCategories, importedCustomObjectTypes, importedForms - all are fine"
	"createCaseForm, modifyCaseForm are both fine"