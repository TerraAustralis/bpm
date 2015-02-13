plugins
allPluginsDo: aBlock
	self allPlugins do: [:each | aBlock value: each]