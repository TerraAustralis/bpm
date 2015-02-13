magma
restoreSavedSession

	self release.
	self model: nil.
	savedSession becomeTheSessionForTheCurrentProcess.