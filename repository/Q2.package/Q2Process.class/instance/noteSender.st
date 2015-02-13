email
noteSender
	"When a note receives 'sendAsMail it asks the case' process who will be the sender of the mail"

	popReceivers isEmpty ifFalse: [^ popReceivers first email].
	self error: 'Cannot send mail from process without popReceiver(s)'.