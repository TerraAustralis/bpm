as yet unclassified
mailFrom: sender to: receivers text: headerAndBody
	| smtpClient account hostName i port |

	Q2Session current isMock ifTrue: [
		"No outgoing email - (unit) testing."
		self savedMessages add: (sender->receivers).
		Q2Log warn: 'Email not sent since we use a mock session.'
	] ifFalse: [
		"Send mail"
		smtpClient := SMTPClient new.
		account := Q2Object settings at: #systemEmailAccount section: #email.
		smtpClient user: account.
		smtpClient password: (Q2Object settings at: #systemEmailPassword section: #email).
		
		[hostName := Q2Object settings at: #smtpServer section: #email.
		i _ hostName indexOf: $:.
		i = 0 ifTrue: [
			port := SMTPClient defaultPortNumber]
			ifFalse: [
				port _ (hostName copyFrom: i + 1 to: hostName size) asInteger.
				hostName _ hostName truncateTo: i - 1].
		smtpClient openOnHost: (NetNameResolver addressForName: hostName timeout: 20) port: port.
		[smtpClient mailFrom: sender to: receivers text: headerAndBody]
			ensure: [smtpClient close]]
			on: Error do: [:ex |
				Q2Log error: 'Error when sending email: ', ex asString]
	]