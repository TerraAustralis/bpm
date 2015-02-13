email
sendConfirmationToReporter
	"Send an email to the reporter confirming the creation of this case if the process settings say we should."

	| message text |
	(self reporter notNil and: [self reporter hasEmail not]) ifTrue: [
		Q2Log notice: 'A case has been reported but the reporter (', self reporter fullName, ') has no email set.'.
		^self].

	((self process settingAt: #confirmCasesCreated) or: [
		self cameByEmail and: [self process settingAt: #confirmCasesCreatedByEmail]] or: [
			self reporter isReporter and: [self process settingAt: #confirmCasesCreatedByReporters]])
				ifTrue: [
	
		text := String streamContents: [:stream |
				stream nextPutAll: 'Case number ', self name,
					' was successfully created with subject: ', String crlf;
					nextPutAll: '	"', subject, '"', String crlf].
		message := Q2SmtpMailItem empty.
		message from: (Q2Object settings at: #systemEmail section: #email)
				to: {reporter}
				subject: self subject
				replyTo: self process replyToEmail
				body: text
				reference: self emailReference.

		self model push: message forService: Q2NotificationSenderService]