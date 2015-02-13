actions
clear
	self cancelCache.
	edit := false.
	formValue := nil.
	editors := OrderedCollection new.
	tabBook := Q2TabBook parent: self.