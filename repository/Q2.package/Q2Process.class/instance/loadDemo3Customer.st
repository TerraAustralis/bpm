sample
loadDemo3Customer
	| imported privateOrOrg orgNum |

	self addUsers: model realUsers.
	self importCategories: self model definedCategories.

"	casePrototype := self newCase.
	self addPopAccount: 'qurius' password: 'water07' server: 'localhost'.
	(self addPopReceiver: 'qurius-support@wm.gjallar.se' casePrototype: casePrototype)
		replyToEmail: 'qurius-support@wm.gjallar.se'.
"
	"Remove the imported default table and copy it instead so we can modify it"
	imported := tableCaseForms removeLast.
	importedForms remove: imported.
	self addTableCaseForm: imported unwrapped veryDeepCopy. 

	self settingAt: #allowNobodyResponsibleSeconds put: 12*3600.

	createCaseForm fields removeFirst; removeLast. "removing source and attachments"
	description := createCaseForm fields removeLast.
	description label: 'Comment'.
	createCaseForm fields first label: 'Name'; description: 'Name of the customer'.  "subject"
	privateOrOrg := createCaseForm newBoolean label: 'Private customer'; description: 'Private customer instead of an organisation.'.
	orgNum := createCaseForm newText label: 'Organisation number'; description: 'Organisation number of personal number if an individual.'.
	orgNum name: #orgNumber.
	createCaseForm addField: description.
	modifyCaseForm addField: privateOrOrg; addField: orgNum.

	"Special index for orgNumber."
	self flag: #q2todo.
	self flag: #miki.
	"miki: Make this non-dependent on Magma for GemStone port."
	cases addIndex: ((MaSearchStringIndex attribute: #orgNumber) keySize: 64).

	self tableCaseForms last addField: orgNum.

	self newWorkflow.
	workflow loadDemo3Customer.

"	(workflow findStageNamed: 'Working') addMandatoryOnEnter: customer.
	(workflow findStageNamed: 'Solved')  addMandatoryOnEnter: form.
	(workflow findStageNamed: 'Closed') addMandatoryOnEnter: hours.
"
	workflow scratchStage setNoAllowedForms.

	self loadDefaultPermissions