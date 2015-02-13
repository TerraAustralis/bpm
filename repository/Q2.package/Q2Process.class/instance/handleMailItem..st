email
handleMailItem: msg 
	"We try to handle the mail item, and if we fail we let the
	model try (which will let all Processes have a go at it) and if
	the model fails too - we resign and create the case in this Process
	since it was this Process that initially popped it anyway:
	No incoming emails can ever be ignored."

	"Yes, the naming is stupid."
	(self handlePopMailItem: msg) ifFalse: [
		(model handlePopMailItem: msg) ifFalse: [
			self createCaseFrom: msg for: self "last resort"
		]
	]