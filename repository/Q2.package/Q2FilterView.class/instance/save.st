actions
save

	model name: editName; description: editDescription.
	self session model modifyFilter: model user: self currentUser.
	self toggleMode