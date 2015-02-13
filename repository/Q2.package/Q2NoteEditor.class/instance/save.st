actions
save
	"Create note by adding it to the case. We also optionally send it as an email."

	self flag: #q2todo. "sending as email should optimally be queued and done in a separate process"
	self model addNote: note toCase: note case files: nil.
	sendAsMail ifTrue: [note sendAsReply].
	self close.