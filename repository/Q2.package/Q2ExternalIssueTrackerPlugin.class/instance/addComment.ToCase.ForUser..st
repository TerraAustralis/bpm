soap services
addComment: comment ToCase: anId ForUser: userEmail
	| note case model |
	model := self model.
	case := model findCaseNamed: anId.
	case ifNotNil: [
		note := (Q2Note new) 
			subject: 'Case resolved in Jira';
			description: 'Case resolved in Jira.', {Character cr}, comment; 
			case: case;
			author: (model findUserOrPersonByEmail: userEmail).
			model addNote: note toCase: case files: nil.
	] ifNil: [Q2Log debug: 'No gjallar case for jira: ', anId].
	^nil "Do not return self..."