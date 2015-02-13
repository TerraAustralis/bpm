sample
loadDemo4Support
	| form casePrototype severity hours priority system sharedFields |

	self addUsers: model realUsers.
	self importCategories: self model definedCategories.
	sharedFields := model findFormNamed: 'Shared fields'.

	self importCustomObjectTypes: {
		model findCustomObjectTypeNamed: 'Severity'.
		model findCustomObjectTypeNamed: 'Priority'.
		model findCustomObjectTypeNamed: 'System'}.

	casePrototype := self newCase.
	self addPopAccount: 'sek' password: '7s0vare' server: 'localhost:11000'.
	(self addPopReceiver: 'sek@sek.gjallar.se' casePrototype: casePrototype)
		replyToEmail: 'sek@sek.gjallar.se'.

	"Remove the imported default table and copy it instead so we can modify it"
"	imported := tableCaseForms removeLast.
	importedForms remove: imported.
	self addTableCaseForm: imported unwrapped copy. "

	self settingAt: #allowNobodyResponsibleSeconds put: 12*3600.

	form := self newFormNamed: 'Solution proposal'.
	form label: 'Solution proposal'.
	form newText label: 'Solution description'; multiline: true; description: 'What to do'.
"	form newBoolean label: 'Requires on site service'; description: 'Check if the proposal involves service on site'; defaultValue: false."
	form addCategory: (self categoryNamed: 'Public forms').

	system := sharedFields fieldNamed: 'system'.
	severity := sharedFields fieldNamed: 'severity'.
	priority := sharedFields fieldNamed: 'priority'.
	hours := sharedFields fieldNamed: 'hours'.

	createCaseForm fields removeFirst. "source"
	createCaseForm addField: severity; addField: system.
	modifyCaseForm addField: severity; addField: priority; addField: system; addField: hours.

	self tableCaseForms last addField: priority; addField: system.

"	form2 newDate label: 'Date on site'; description: 'Enter date when service was performed.'.
	form2 newBoolean label: 'Was offered coffee'; description: 'Did the customer offer coffee?'.
	form2 newInteger label: 'Downtime in days'; description: 'Time that the system has not been able to perform'.
	form2 newText label: 'Comment'; multiline: true; description: 'Any comments around the service.'.
	serviceDone := form2 newBoolean label: 'Service done'; description: 'Check this when service is finished'.
	form2 addCategory: (self categoryNamed: 'Public forms').
"
	self newWorkflow.
	workflow loadDemo4Support.

	(workflow findStageNamed: 'Working') addMandatoryOnEnter: system.
	(workflow findStageNamed: 'Solved')  addMandatoryOnEnter: form.
	(workflow findStageNamed: 'Closed') addMandatoryOnEnter: hours.

	workflow scratchStage setNoAllowedForms.

	self loadDefaultPermissions.