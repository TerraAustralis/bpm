sample
loadSupport
	| form casePrototype cobj |

	self importUsers: model users.
	self importCategories: self model definedCategories.
	casePrototype := self newCase.
	self addPopReceiver: 'support@valhall.org' casePrototype: casePrototype.

	form := self newFormNamed: 'Review checklist'.
	form label: 'Review checklist'.
	(form newBoolean)
		label: 'Case information complete';
		description: 'Mark if reviewer considers case complete'.
	(form newBoolean)
		label: 'Problem area investigated earlier';
		description: 'Mark if reviewer considers case to have been investigated earlier';
		defaultValue: false.
	(form newBoolean)
		label: 'Problem area urgent';
		description: 'Mark if reviewer consider it to be very, damn urgent';
		defaultValue: false.
	(form newBoolean)
		label: 'Specification available';
		description: 'Mark if reviewer considers the case description to contain a specification of a solution';
		defaultValue: false.
	form addCategory: (self categoryNamed: 'Public forms').
	form := self newFormNamed: 'Service report'.
	form label: 'Service report'.
	cobj := Q2CustomObjectType named: 'Companies'.
	cobj strings: { 'Acme'. 'Emca' }.
	self addCustomObjectType: cobj.
	(form newSelection)
		label: 'Customer';
		description: 'Select customer for the report';
		valuesProvider: cobj.
	(form newText)
		label: 'Downtime (in days)';
		description: 'Time that the system has not been able to perform'.
	(form newText)
		label: 'System downtime (in days)';
		description: 'Time the system has been down'.
	form addCategory: (self categoryNamed: 'Public forms').
	workflow loadSupport.

"	form := self newFormNamed: 'Alternate table form'.
	form label: 'Form for showing cases in a table'.
	form newCaseId label: 'Id'; selector: #name.
	form newText label: 'Status'; selector: #status.
	form newText label: 'Stage'; selector: #stage.
	form newText label: 'Responsible'; selector: #responsible.
	form newText label: 'Subject'; selector: #subject.
	form newAge label: 'Created'; selector: #ageInSeconds.
	form newAge label: 'Modified'; selector: #ageUnModifiedInSeconds.
	self addTableCaseForm: form."
	self loadDefaultPermissions.