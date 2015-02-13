private
attachments: aColl
	"Set the attachments collection. Compare with old
	and make sure removed ones are deleted (?) and added
	ones are added."

"Do nothing, attachments are added using separate txns!"

"	aColl do: [:each |
		(attachments includes: each) ifFalse: [self addAttachment: each]]"