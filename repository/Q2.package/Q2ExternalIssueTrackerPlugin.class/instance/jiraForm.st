rendering
jiraForm
	^(self owner findFormNamed: 'Jira') ifNil: [ | form textList |
		form := self owner newFormNamed: 'Jira'.
		form label: 'Jira'.
		textList := form newUrlTextList.
		textList label: 'Related Jira cases'.
		textList name: 'Jira Issue status'.
		textList description: 'Jira cases related to this case.'.
		textList readOnly: true.
		textList field urlBlock: [:f | 'http://localhost:8080/browse/', (f cache first: (f cache findString: ' - ') -1)].
		^form]