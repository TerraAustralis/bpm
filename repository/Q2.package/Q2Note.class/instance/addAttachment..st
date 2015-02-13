attachments
addAttachment: anAttachment
	attachments ifNil: [attachments := OrderedCollection new].
	^attachments add: anAttachment