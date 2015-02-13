sample
loadDemo3Letter
	| |

	self addUsers: model realUsers.
	self importCategories: self model definedCategories.
"	self importCustomObjectTypes: {
		model findCustomObjectTypeNamed: 'Severity'.
		model findCustomObjectTypeNamed: 'Priority'.
		model findCustomObjectTypeNamed: 'Customers'.
		model findCustomObjectTypeNamed: 'Products'}."

"	casePrototype := self newCase.
	self addPopAccount: 'qurius' password: 'water07' server: 'localhost'.
	(self addPopReceiver: 'qurius-support@wm.gjallar.se' casePrototype: casePrototype)
		replyToEmail: 'qurius-support@wm.gjallar.se'.
"
	createCaseForm fields removeFirst.
"	severity := createCaseForm newSelection label: 'Severity'; description: 'Select the level of severity you feel is appropriate'; valuesProvider: (self findCustomObjectTypeNamed: 'Severity').

	modifyCaseForm newSelection label: 'Product'; description: 'Select product for the case'; valuesProvider: (self findCustomObjectTypeNamed: 'Products').
	modifyCaseForm newText label: 'Version'; description: 'Enter version number of the product'.
	customer := modifyCaseForm newSelection label: 'Customer'; description: 'Select customer for the report'; valuesProvider: (self findCustomObjectTypeNamed: 'Customers').
	modifyCaseForm addField: severity.
	priorityCo := self findCustomObjectTypeNamed: 'Priority'.
	priority := modifyCaseForm newSelection label: 'Priority'; description: 'Select internal priority level'; valuesProvider: priorityCo; defaultValue: priorityCo objects fourth.
	hours := modifyCaseForm newInteger label: 'Hours spent'; description: 'Total number of hours spent on this case'.

	self tableCaseForms last addField: priority; addField: customer.
"

"	form2 newDate label: 'Date on site'; description: 'Enter date when service was performed.'.
	form2 newBoolean label: 'Was offered coffee'; description: 'Did the customer offer coffee?'.
	form2 newInteger label: 'Downtime in days'; description: 'Time that the system has not been able to perform'.
	form2 newText label: 'Comment'; multiline: true; description: 'Any comments around the service.'.
	serviceDone := form2 newBoolean label: 'Service done'; description: 'Check this when service is finished'.
	form2 addCategory: (self categoryNamed: 'Public forms').
"
	self newWorkflow.
	workflow loadDemo3Letter.

"	(workflow findStageNamed: 'Working') addMandatoryOnEnter: customer.
	(workflow findStageNamed: 'Solved')  addMandatoryOnEnter: form.
	(workflow findStageNamed: 'Closed') addMandatoryOnEnter: hours.
"
	workflow scratchStage setNoAllowedForms.

	self loadDefaultPermissions.