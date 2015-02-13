attachments
createAndAddAttachments: fileList
	"Add these files as attachments to the case and save them on disk.
	Used when replaying txns in mirrors etc."

	^fileList collect: [ :each | 
		self addAttachment: (Q2Attachment content: each case: self) ]