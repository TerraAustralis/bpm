initialize-release
content: aFile case: aCase
	"Set the content and owner of this attachment.
	We store it in the filesystem if bytes are available.
	The attachment is not yet actually added in the case,
	see #addedToCase:."

	case ifNotNil: [self error: 'Attachment already assigned to a case'].
	case := aCase.
	originalFileName := aFile fileName.
	self save: aFile content