sample
loadDemo3Security

	| securityType endDate amount buType securityGivenBy collectionDate repaidDate |
	self addUsers: model realUsers.
	self importCategories: self model definedCategories.
	self importCustomObjectTypes: {
		model findCustomObjectTypeNamed: 'Security type'.
		model findCustomObjectTypeNamed: 'Business unit'}.

	createCaseForm fields removeFirst; removeLast. "source and attachments removed"
	createCaseForm fields first label: 'Customer name'.
	description := createCaseForm fields removeLast.
	description label: 'Comment'.

	securityType := createCaseForm newSelection label: 'Security type'; description: 'Select the type of the security'; valuesProvider: (self findCustomObjectTypeNamed: 'Security type').
	securityGivenBy := createCaseForm newText label: 'Security orgnum'; description: 'Organisation number, person number of the bondsman.'.
	endDate := createCaseForm newDate label: 'End date'; description: 'The end date for the security.'.
	
	amount := createCaseForm newInteger label: 'Amount'; description: 'The amount for the security.'.
	buType := createCaseForm newSelection label: 'Business unit'; description: 'Select the business unit'; valuesProvider: (self findCustomObjectTypeNamed: 'Business unit').
	createCaseForm addField: description. "putting it last"
	
	modifyCaseForm addField: securityType; addField: securityGivenBy; addField: endDate.
	repaidDate := modifyCaseForm newDate label: 'Repaid date'; description: 'The date repaid.'.
	collectionDate := modifyCaseForm newDate label: 'Collection date'; description: 'The date of collection of debt.'.
	modifyCaseForm addField: amount; addField: buType.

	self tableCaseForms last addField: endDate.


"	form2 newDate label: 'Date on site'; description: 'Enter date when service was performed.'.
	form2 newBoolean label: 'Was offered coffee'; description: 'Did the customer offer coffee?'.
	form2 newInteger label: 'Downtime in days'; description: 'Time that the system has not been able to perform'.
	form2 newText label: 'Comment'; multiline: true; description: 'Any comments around the service.'.
	serviceDone := form2 newBoolean label: 'Service done'; description: 'Check this when service is finished'.
	form2 addCategory: (self categoryNamed: 'Public forms').
"
	self newWorkflow.
	workflow loadDemo3Security.

"	(workflow findStageNamed: 'Working') addMandatoryOnEnter: customer.
	(workflow findStageNamed: 'Solved')  addMandatoryOnEnter: form.
	(workflow findStageNamed: 'Closed') addMandatoryOnEnter: hours.
"
	workflow scratchStage setNoAllowedForms.

	self loadDefaultPermissions.