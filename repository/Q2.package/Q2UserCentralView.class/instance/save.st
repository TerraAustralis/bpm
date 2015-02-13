edit
save

	self flag: #q2todo. "somehow figure out if the panel is dirty"
	self model modifyUserCentral: central user: self currentUser.
	self toggleMode