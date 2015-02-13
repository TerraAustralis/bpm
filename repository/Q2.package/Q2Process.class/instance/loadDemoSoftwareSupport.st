sample
loadDemoSoftwareSupport
	| form casePrototype cobj serviceDone form2 customer |

	self importUsers: model users.
	self importCategories: self model definedCategories.
	casePrototype := self newCase.
	self addPopAccount: 'q2' password: 'fruit98' server: 'localhost'.
	self addPopReceiver: 'support@krampe.se' casePrototype: casePrototype.

	

	form := self newFormNamed: 'Solution proposal'.
	form label: 'Solution proposal'.
	form newText label: 'Solution description'; multiline: true; description: 'What to do'.
	form newBoolean label: 'Requires on site service'; description: 'Check if the proposal involves service on site'; defaultValue: false.
	form addCategory: (self categoryNamed: 'Public forms').

	form2 := self newFormNamed: 'Service report'.
	form2 label: 'Service report'.
	
	cobj := self newCustomObjectTypeNamed: 'Companies'.
	cobj hasNil: true.
	cobj singleObjects: { 'Acme Co.'. 'Emca Gmbh'. 'Goldilock AB'. 'Whimsical Inc.' }.


	customer := modifyCaseForm newSelection label: 'Customer'; description: 'Select customer for the report'; valuesProvider: cobj.


	form2 newDate label: 'Date on site'; description: 'Enter date when service was performed.'.
	form2 newBoolean label: 'Was offered coffee'; description: 'Did the customer offer coffee?'.
	form2 newInteger label: 'Downtime in days'; description: 'Time that the system has not been able to perform'.
	form2 newText label: 'Comment'; multiline: true; description: 'Any comments around the service.'.
	serviceDone := form2 newBoolean label: 'Service done'; description: 'Check this when service is finished'.
	form2 addCategory: (self categoryNamed: 'Public forms').

	self newWorkflow.
	workflow loadDemoSoftwareSupport.

	(workflow findStageNamed: 'Analyze') addEnterCriterion: (customer mandatoryCriterion).
	(workflow findStageNamed: 'Perform service')  addMandatoryOnExit: form2.
	(workflow findStageNamed: 'Solved with service') addEnterCriterion: (serviceDone valueCriterion: true).
	(workflow findTransitionNamed: 'Solution proposed') addCriterion: (form mandatoryCriterion).

	self loadDefaultPermissions.