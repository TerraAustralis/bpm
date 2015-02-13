email
handleRawMailItem: msg fromAccount: acc
	"First we create a Q2PopMailItem from the raw MailMessage.
	This will parse and find the sender as a Q2User or Q2Person etc.
	Then we try to handle the mail item, and if we fail we let the
	model try (which will let all Processes have a go at it) and if
	the model fails too - we resign and create the case in this Process
	since it was this Process that initially popped it anyway:
	No incoming emails can ever be ignored."

	| popMailItem |
	popMailItem := acc from: msg model: model.
	(acc notNil and: [acc rejectsEmail: popMailItem]) ifFalse: [
		(self handlePopMailItem: popMailItem) ifFalse: [
			(model handlePopMailItem: popMailItem) ifFalse: [
				self createCaseFrom: popMailItem for: self "last resort"
			]
		]
	]