email
sendAsMail: toList
	| message |
	toList notEmpty ifTrue: [
		message := Q2SmtpMailItem empty.
		message from: case process replyToEmail "author email"
				to: toList	
				subject: self subject
				replyTo: case process replyToEmail
				body: description
				reference: self emailReference.
		self flag: #q2todo.
		" Q2attachment does not (currently) have the method getStream.
		This should be implemented to get the file from disk, and attach it to the mail.

		attachments ifNotNilDo: [:a | message addAttachmentFrom: aQ2attachment]."

		self model push: message forService: Q2NotificationSenderService.
	].