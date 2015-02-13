email
addPopAccount: username password: password server: aHostName

	^popAccounts add: (Q2PopAccount new username: username; password: password; server: aHostName; yourself)