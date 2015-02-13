actions
save

	newSource = page source ifFalse: [
		self model modifyWikiPageIn: owner to: newSource].
	newSource := nil.
	editing := false