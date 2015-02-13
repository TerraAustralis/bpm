sample
loadDemo4Bugs

	| casePrototype sharedFields system severity priority hours |
	self settingAt: #allowNobodyResponsible put: true.
	self importCategories: self model definedCategories.
	sharedFields := model findFormNamed: 'Shared fields'.

	casePrototype := self newCase.
	(self addPopReceiver: 'sek-bugs@sek.gjallar.se' casePrototype: casePrototype)
		replyToEmail: 'sek-bugs@sek.gjallar.se'.

	system := sharedFields fieldNamed: 'system'.
	severity := sharedFields fieldNamed: 'severity'.
	priority := sharedFields fieldNamed: 'priority'.
	hours := sharedFields fieldNamed: 'hours'.

	createCaseForm fields removeFirst. "source"
	createCaseForm addField: severity; addField: system.
	modifyCaseForm addField: severity; addField: priority; addField: system; addField: hours.

	self newWorkflow.
	workflow loadDemo4Bugs.
	workflow scratchStage setNoAllowedForms.
	self loadDefaultPermissions.