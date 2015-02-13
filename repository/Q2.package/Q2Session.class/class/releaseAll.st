initialization
releaseAll

	self allInstances do: [ :aSession | aSession releaseDBSession ]