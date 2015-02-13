sample
loadDevelopment
	| f form casePrototype subs |
	workflow loadSimple.
	self importUsers: model users.
	self importCustomObjectTypes: {model findCustomObjectTypeNamed: 'Severity'}.
	self importCategories: model definedCategories.
	self loadDefaultPermissions.

	casePrototype := self newCase.
	self addPopReceiver: 'development@valhall.org' casePrototype: casePrototype.
	f := Q2AssociationField new.
	f
		label: 'Responsible';
		description: 'Set a user as responsible.';
		withSelector: #responsibleUserAndRole.
	createCaseForm addField: f before: createCaseForm fields first.
	f := Q2BooleanField new.
	f
		label: 'Internal';
		description: 'Mark the case as internal.'.
	createCaseForm addField: f.
	modifyCaseForm addField: f.
	f := Q2SelectionField new.
	f
		label: 'Severity';
		description: 'Describe how serious the case is according to you';
		valuesProvider: (self findCustomObjectTypeNamed: 'Severity').
	createCaseForm addField: f.
	modifyCaseForm addField: f.
	"We copy the imported default one and modify it"
	self addTableCaseForm: self tableCaseForms last unwrapped veryDeepCopy. 
	self tableCaseForms last addField: f.
 
	form := self newFormNamed: 'Extra comment'.
	form label: 'Extra comment'.
	(form newText)
		label: 'Comment';
		multiline: true;
		description: 'A comment about the case.'.
	form addCategory: (self categoryNamed: 'Secret forms').

	subs := Q2ProcessSubscription named: 'Responsible must know'.
	subs process: self. "This will also add subs to proc"
	subs addEvent: Q2ModifiedCaseResponsibleToMeEvent.
	subs overrideDigest: true.