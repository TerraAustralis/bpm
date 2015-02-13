private
addedToCase: aCase
	"Attachment was added to a case. We move our content from temp
	area into the case area,"

	case = aCase ifFalse: [
		self error: 'Attachment added to a different case than it was uploaded for!' ].
	self moveOnDisk