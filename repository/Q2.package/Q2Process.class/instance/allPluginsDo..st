plugins
allPluginsDo: aBlock
	self processPluginsDo: aBlock.
	model globalPluginsDo: aBlock.