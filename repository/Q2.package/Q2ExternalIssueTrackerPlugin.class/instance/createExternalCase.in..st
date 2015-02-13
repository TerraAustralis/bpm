actions
createExternalCase: aCase in: project
	| obj token dict customValue user jiraId note |
	user := self session currentUser.
	token := self login: user.
	dict := Dictionary new.
	customValue := Dictionary new.
	dict at: #project put: project.
	dict at: #type put: '1'. "== Bug"
	dict at: #description put: aCase description utf8ToIso.
	dict at: #summary put: aCase subject utf8ToIso.
	dict at: #assignee put: user name.
	customValue at: #customfieldId put: 'customfield_10080'.
	customValue at: #key put: nil.
	"Yes, aCase name is a string, but: When first tested, aCase name was a 'MagmaMutatingProxy'. Reading the name as a string helped..."
	customValue at: #values put: (SoapEncArray fromArray: (Array with: (aCase name asString)) named: 'values' elementType: 'string').
	dict at: #customFieldValues put: (SoapEncArray fromArray: (Array with: customValue) named: 'customFieldValues' elementType: 'CustomFieldValue').
	obj := Q2Object callServer: 'createIssue' with: {{#in0.  token}. {#in1. dict}} on: 'localhost' port: 8080 uri: '/rpc/soap/jirasoapservice-v2' returnValue: false.
	obj isFault ifFalse: [
		jiraId := ((obj envelope body findBodyEntryNamed: 'multiRef') children detect: [:c | c name = #key]) value.
	 	note := (Q2Note new) subject: 'Case created in Jira: ', jiraId; description: 'Jira id: ', jiraId; case: aCase.
		self setJiraIssue: jiraId toStatus: 'New' forCase: aCase note: note.
	] ifTrue: [self halt.]