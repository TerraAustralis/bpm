as yet unclassified
initialize
	super initialize.
	description := 'Enable and disable global plugins.'.
	label := 'Global plugin administration'.
	pluginsView := Q2PluginsView parent: self.
	pluginsView pluginsClass: Q2GlobalPlugin registryOwner: self model.