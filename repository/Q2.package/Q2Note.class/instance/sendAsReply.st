email
sendAsReply
	"Send note as an email reply to either the author of the parent note
	or the reporter of the case (if this is a note on the case).
	Also cc to interested persons (nosy list)."

	self flag: #q2todo.
	"Hide the 'send as mail' checkbox in UI if the nosy list preference is on."

	self sendAsMailTo: {self parentOrCase author} cc:  self case interested.