actions
saveAsNew

	| |
	model := model copy.
	model name: editName; description: editDescription.
	self session model addFilter: model user: self currentUser.
	self toggleMode