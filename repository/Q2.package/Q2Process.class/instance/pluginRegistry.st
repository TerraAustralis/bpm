accessing
pluginRegistry
	^plugInRegistry ifNil: [plugInRegistry := Q2PluginRegistry owner: self]