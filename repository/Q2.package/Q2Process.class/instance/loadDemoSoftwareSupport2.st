sample
loadDemoSoftwareSupport2
	| form casePrototype severity customer hours priorityCo imported priority |

	self addUsers: model realUsers.
	self importCategories: self model definedCategories.
	self importCustomObjectTypes: {
		model findCustomObjectTypeNamed: 'Severity'.
		model findCustomObjectTypeNamed: 'Priority'.
		model findCustomObjectTypeNamed: 'Customers'.
		model findCustomObjectTypeNamed: 'Products'}.

	casePrototype := self newCase.
	self addPopAccount: 'qurius' password: 'water07' server: 'localhost'.
	(self addPopReceiver: 'support@qurius.gjallar.se' casePrototype: casePrototype)
		replyToEmail: 'support@qurius.gjallar.se'.

	"self addPopAccount: 'wm' password: 'water08' server: 'localhost'.
	(self addPopReceiver: 'support-test@qurius.gjallar.se' casePrototype: casePrototype)
		replyToEmail: 'support-test@qurius.gjallar.se'."

	"Remove the imported default table and copy it instead so we can modify it"
	imported := tableCaseForms removeLast.
	importedForms remove: imported.
	self addTableCaseForm: imported unwrapped veryDeepCopy. 

	self settingAt: #allowNobodyResponsibleSeconds put: 12*3600.

	form := self newFormNamed: 'Solution proposal'.
	form label: 'Solution proposal'.
	form newText label: 'Solution description'; multiline: true; description: 'What to do'.
"	form newBoolean label: 'Requires on site service'; description: 'Check if the proposal involves service on site'; defaultValue: false."
	form addCategory: (self categoryNamed: 'Public forms').

	createCaseForm fields removeFirst. "source"
	severity := createCaseForm newSelection label: 'Severity'; description: 'Select the level of severity you feel is appropriate'; valuesProvider: (self findCustomObjectTypeNamed: 'Severity').

	modifyCaseForm newSelection label: 'Product'; description: 'Select product for the case'; valuesProvider: (self findCustomObjectTypeNamed: 'Products').
	modifyCaseForm newText label: 'Version'; description: 'Enter version number of the product'.
	customer := modifyCaseForm newSelection label: 'Customer'; description: 'Select customer for the report'; valuesProvider: (self findCustomObjectTypeNamed: 'Customers').
	modifyCaseForm addField: severity.
	priorityCo := self findCustomObjectTypeNamed: 'Priority'.
	priority := modifyCaseForm newSelection label: 'Priority'; description: 'Select internal priority level'; valuesProvider: priorityCo; defaultValue: priorityCo objects fourth.
	hours := modifyCaseForm newInteger label: 'Hours spent'; description: 'Total number of hours spent on this case'.

	self tableCaseForms last addField: priority; addField: customer.

"	form2 newDate label: 'Date on site'; description: 'Enter date when service was performed.'.
	form2 newBoolean label: 'Was offered coffee'; description: 'Did the customer offer coffee?'.
	form2 newInteger label: 'Downtime in days'; description: 'Time that the system has not been able to perform'.
	form2 newText label: 'Comment'; multiline: true; description: 'Any comments around the service.'.
	serviceDone := form2 newBoolean label: 'Service done'; description: 'Check this when service is finished'.
	form2 addCategory: (self categoryNamed: 'Public forms').
"
	self newWorkflow.
	workflow loadDemoSoftwareSupport2.

	(workflow findStageNamed: 'Working') addMandatoryOnEnter: customer.
	(workflow findStageNamed: 'Solved')  addMandatoryOnEnter: form.
	(workflow findStageNamed: 'Closed') addMandatoryOnEnter: hours.

	workflow scratchStage setNoAllowedForms.

	self loadDefaultPermissions.