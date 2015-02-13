actions
delete

	self session model removeFilter: model user: self currentUser.
	self parent unloadFilterViewer: self