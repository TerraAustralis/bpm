private
addAttachment: newAttachment
	"Add the attachment to this case. It will itself move its contents
	on disk into the correct directory."

	attachments add: newAttachment.
	newAttachment addedToCase: self.
	^newAttachment