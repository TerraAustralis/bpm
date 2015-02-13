email
addImapAccount: username password: password server: aHostName

	^popAccounts add: (Q2ImapAccount new server: aHostName; username: username; password: password; yourself)