email
sendAsMailTo: toList cc: ccList
  | message |
  toList notEmpty
    ifTrue: [ 
      message := WAEmailMessage
        from: case process replyToEmail
        to: toList
        subject: self subject.
      message
        addCc: ccList;
        replyTo: case process replyToEmail;
        body: description.
      self flag: #'q2todo'.	"reference: self emailReference."	"author email"	" Q2attachment does not (currently) have the method getStream.
		This should be implemented to get the file from disk, and attach it to the mail.

		attachments ifNotNilDo: [:a | message addAttachmentFrom: aQ2attachment]."
      self model push: message forService: Q2NotificationSenderService ]