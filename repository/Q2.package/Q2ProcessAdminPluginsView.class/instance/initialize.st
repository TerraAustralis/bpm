as yet unclassified
initialize
	super initialize.
	description := 'Enable and disable plugins for the processes you administrating.'.
	label := 'Plugin administration'.
	pluginsView := Q2PluginsView parent: self.