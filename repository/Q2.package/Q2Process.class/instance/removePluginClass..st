plugins
removePluginClass: aPlugInClass

	| plugin |
	plugin := self pluginRegistry plugins detect: [:p | p class = aPlugInClass].
	plugin ifNotNil: [self model removePlugin: plugin for: self]