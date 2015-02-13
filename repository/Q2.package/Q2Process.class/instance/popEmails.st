email
popEmails
	[popAccounts
		do: [:account | 
			account messagesDo: [:msg | account handleRawMailItem: msg in: self]
		]
	]
	on: Error do: [:ex |
			Q2Log error: 'When getting email: ', ex asString]