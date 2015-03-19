urls
expandtoc
	"Expand given entry in request by updating the session
	info on which entries to show."

	self forceExpandEntryName: (request getFields at: #entry).
	^ self reloadWithoutLast