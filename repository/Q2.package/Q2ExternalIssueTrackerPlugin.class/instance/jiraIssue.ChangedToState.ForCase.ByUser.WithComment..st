soap services
jiraIssue: issue ChangedToState: state ForCase: caseId ByUser: userEmail WithComment: comment
	| note case model |
	model := self model.
	case := model findCaseNamed: caseId.
	case ifNotNil: [
		note := (Q2Note new) 
			subject: 'Jira case ', issue,' changed state to: ', state;
			description: comment isoToUtf8; 
			case: case;
			author: (model findUserOrPersonByEmail: userEmail).
		self setJiraIssue: issue toStatus: state forCase: case note: note.
	] ifNil: [Q2Log debug: 'No gjallar case for jira: ', caseId].
	^nil "Do not return self..."