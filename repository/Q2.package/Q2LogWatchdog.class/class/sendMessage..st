as yet unclassified
sendMessage: msg
	"Send the message."

	| receiver |
"Transcript show: 'Watchdog sending: ', msg;cr."
	receiver := Q2Object settings at: #watchdogEmail section: #email.
	receiver isEmptyOrNil
		ifFalse: [
			Q2MailSender
				mailFrom: (Q2Object settings at: #systemEmail section: #email)
				to: (Array with: receiver)
				text: 'Subject: Important log messages

Log messages on Gjallar above threshold:
', msg]