attachments
numberOfAttachmentsWith: filename
	"Return the number of existing attachments with this name."

	^(attachments select: [:each | each originalFileName = filename]) size