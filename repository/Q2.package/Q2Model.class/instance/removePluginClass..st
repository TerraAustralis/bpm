plugins
removePluginClass: aPluginClass

	| plugin |
	plugin := self pluginRegistry plugins detect: [:p | p class = aPluginClass].
	plugin ifNotNil: [self removePlugin: plugin for: self]