as yet unclassified
setJiraIssue: jiraId toStatus: status forCase: aCase note: note
	| field fieldValue jiraIssue jiraString model |
	jiraString := jiraId, ' - ', status.
	model := self model.
	field := (aCase fieldNamed: 'Jira Issue status') 
				ifNil: [
					aCase addForm: self jiraForm.
					aCase fieldNamed: 'Jira Issue status'
				].
	fieldValue := aCase atField: field ifAbsent: [OrderedCollection new].
	jiraIssue := fieldValue detect: [:fv | fv beginsWith: jiraId] ifNone: [nil].
	jiraIssue
		ifNotNil: [fieldValue at: (fieldValue indexOf: jiraIssue) put: jiraString]
		ifNil: [fieldValue add: jiraString].
	model updateCase: aCase field: field to: fieldValue.
	note ifNotNil: [model addNote: note toCase: aCase files: nil]