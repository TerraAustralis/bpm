as yet unclassified
sendPassword
	| acct |
	userName ifNil: [
		self inform: 'You need to enter your username to find your account.'.
		self answer: nil].
	acct := self model findUserNamed: userName.
	acct ifNil: [
		self inform: 'No user with username ''', userName, ''' found.'.
		self answer: nil].
	acct password ifNil: [
		self inform: 'This account doesn''t have a password, contact administrator.'.
		self answer: nil].
	acct email ifNil: [
		self inform: 'This account doesn''t have a proper email set, contact administrator.'.
		self answer: nil].
	[SMTPClient 
		deliverMailFrom: (Q2Object settings systemEmail)
		to: {acct email}
		text: 'This email was sent out after a request.
Your password for username ''',userName, ''' on ',self settings systemName,' is: ', acct password 
		usingServer: (Q2Object settings at: #smtpServer section: #email)]
		on: Error
		do: [:ex |
			self inform: 'Exception occurred when trying to send email, sorry...'.
			self answer: nil].
	self inform: 'An email containing the password was sent to ''', acct email, '''.'.
	self answer: nil