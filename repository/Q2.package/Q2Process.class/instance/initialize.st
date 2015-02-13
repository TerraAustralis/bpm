initialize-release
initialize

	super initialize.
	definition := ''.
	administrators := OrderedCollection new.
	forms := OrderedCollection new.
	exportForms := OrderedCollection new.
	processSubscriptions := OrderedCollection new.
	tableCaseForms := OrderedCollection new.
	roles := SortedCollection new.
	linkTypes := SortedCollection new.
	filters := OrderedCollection new.
	customObjectTypes := OrderedCollection new.
	importedForms := IdentitySet new.
	importedCategories := Set new.
	importedUsers := SortedCollection new.
	importedPersons := SortedCollection new.
	importedCustomObjectTypes := Set new.
	popAccounts := OrderedCollection new.
	popReceivers := OrderedCollection new.
	settings := Dictionary new.
	definedCategories := OrderedCollection new.
	permissions := OrderedCollection new.
	plugInSubscriptions := OrderedCollection new.
	self initializeCasesCollection.
	self initializeObjectsCollection.
	self newWorkflow