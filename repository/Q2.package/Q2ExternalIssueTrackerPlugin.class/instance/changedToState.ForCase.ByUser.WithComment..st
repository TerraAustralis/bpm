soap services
changedToState: state ForCase: caseId ByUser: userEmail WithComment: comment
	| note case model |
	model := self model.
	self halt. "verify that the model is correct."
	case := model findCaseNamed: caseId.
	case ifNotNil: [
		note := (Q2Note new) 
			subject: 'Jira case changed state to: ', state;
			description: comment; 
			case: case;
			author: (model findUserOrPersonByEmail: userEmail).
			model addNote: note toCase: case files: nil.
	] ifNil: [Q2Log debug: 'No gjallar case for jira: ', caseId].
	^nil "Do not return self..."