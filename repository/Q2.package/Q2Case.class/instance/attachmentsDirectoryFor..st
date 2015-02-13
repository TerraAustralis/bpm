attachments
attachmentsDirectoryFor: anAttachment
	"Return the directory that given attachment should store its contents in."

	^(self includesAttachment: anAttachment)
		ifTrue: [self attachmentsDirectory]
		ifFalse: [self tempAttachmentsDirectory]