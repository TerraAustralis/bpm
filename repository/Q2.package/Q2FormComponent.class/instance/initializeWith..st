initialization
initializeWith: aModel
	model := aModel.
	model addComponentsIn: self.
	self refreshCache.
	cacheRefreshed := true.