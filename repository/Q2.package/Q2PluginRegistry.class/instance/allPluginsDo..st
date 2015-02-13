as yet unclassified
allPluginsDo: aBlock
	self plugins do: [:each | aBlock value: each]