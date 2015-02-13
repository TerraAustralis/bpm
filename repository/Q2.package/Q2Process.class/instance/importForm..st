forms
importForm: aForm

	^importedForms add: (self wrapImport: aForm)