copying
veryDeepInner: copier
	"Not copied: model
	createCaseForm, modifyCaseForm are copied
	through forms and hooked up in veryDeepFixupWith:"

	| oldCases newCase oldObjects newOnes |
	super veryDeepInner: copier.

	"For prototype, shallow copies - for mirrors, deep"
	Q2CurrentMirror signal ifNotNil: [
			importedUsers := importedUsers veryDeepCopyWith: copier.
			importedPersons := importedPersons veryDeepCopyWith: copier.
			importedCategories := importedCategories veryDeepCopyWith: copier.
			importedCustomObjectTypes := importedCustomObjectTypes veryDeepCopyWith: copier.
			importedForms := importedForms veryDeepCopyWith: copier]
		ifNil: [
			importedUsers := importedUsers collect: [:each | each copyToProcess: self with: copier].
			importedPersons := importedPersons collect: [:each | each copyToProcess: self with: copier].
			importedCategories := importedCategories collect: [:each | each copyToProcess: self with: copier].
			importedCustomObjectTypes := importedCustomObjectTypes collect: [:each | each copyToProcess: self with: copier].
			importedForms := importedForms collect: [:each | each copyToProcess: self with: copier]].
	
	"This is a MagmaCollection, if this is a
	Process prototype there should not be any cases."
	oldCases := cases asOrderedCollection.
	self initializeCasesCollection.
	oldCases do: [:case |
		newCase := case veryDeepCopyWith: copier.
		cases add: newCase.
		model cases add: newCase].

	administrators := administrators veryDeepCopyWith: copier.
	definedCategories := definedCategories veryDeepCopyWith: copier.
	definition := definition copy.
	workflow := workflow veryDeepCopyWith: copier.
	customObjectTypes := customObjectTypes veryDeepCopyWith: copier.
	forms := forms veryDeepCopyWith: copier.
	exportForms := exportForms veryDeepCopyWith: copier.
	processSubscriptions := processSubscriptions veryDeepCopyWith: copier.
	linkTypes := linkTypes veryDeepCopyWith: copier.
	roles := roles veryDeepCopyWith: copier.
	filters := filters veryDeepCopyWith: copier.
	popAccounts := popAccounts veryDeepCopyWith: copier.
	popReceivers := popReceivers veryDeepCopyWith: copier.
	settings := settings veryDeepCopyWith: copier.
	permissions := permissions veryDeepCopyWith: copier.

	"This have to be performed AFTER all objects are copied."
	oldObjects := objects asOrderedCollection.
	self initializeObjectsCollection.
	newOnes := copier references.
	oldObjects do: [:each |
		objects add: (newOnes at: each ifAbsent: [self halt])].

	"see #veryDeepFixupWith: alertedRole assignedRole interestedRole reporterRole responsibleRole sourceRole sameAsLink"