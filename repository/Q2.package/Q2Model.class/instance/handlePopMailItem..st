email
handlePopMailItem: mailItem
	"Either create case or a note on an existing case based on the subject of the email."

	^self processes anySatisfy: [:proc | proc handlePopMailItem: mailItem]