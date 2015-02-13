sample
loadDemo4Request

	| casePrototype sharedFields system |
	self settingAt: #allowNobodyResponsible put: true.
	self importCategories: self model definedCategories.
	sharedFields := model findFormNamed: 'Shared fields'.
	system := sharedFields fieldNamed: 'system'.

	casePrototype := self newCase.
	(self addPopReceiver: 'sek-request@sek.gjallar.se' casePrototype: casePrototype)
		replyToEmail: 'sek-request@sek.gjallar.se'.

	createCaseForm addField: system.
	modifyCaseForm addField: system.

	self newWorkflow.
	workflow loadDemo4Request.
	workflow scratchStage setNoAllowedForms.
	self loadDefaultPermissions.