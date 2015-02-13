sample
loadDemoSoftwareDevelopment

	self settingAt: #allowNobodyResponsible put: true.
	self importUsers: model users.
"	casePrototype := self newCase."
"	self addPopAccount: 'someuser' password: 'somepassword' server: 'apop3server'."
"	self addPopReceiver: 'simple@valhall.org' casePrototype: casePrototype."
	self importCategories: self model definedCategories.

	modifyCaseForm newText label: 'Solution description'; multiline: true; description: 'What to do'.

	self newWorkflow.
	workflow loadDemoSoftwareDevelopment.
	self loadDefaultPermissions.