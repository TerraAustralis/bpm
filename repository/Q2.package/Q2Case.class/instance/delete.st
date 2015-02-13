removing
delete
	"This deletes the case from the system and should only be used
	for 'trash' and be done by an admin. Reluctantly added by Göran."

	self model removeCase: self.
	self process removeCase: self.
	subject := nil.
	self updateIndex "this should reindex the case with an empty string - a hack to remove it from the index."