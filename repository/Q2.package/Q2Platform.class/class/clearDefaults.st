directories
clearDefaults
	self current beginTransaction.
	TempDir := nil.
	WorkingDir := nil.
	
	self current commitTransaction.