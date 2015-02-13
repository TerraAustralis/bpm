plugins support
children
	pluginComponents ifNil: [ self initializePluginComponents ].
	^ pluginComponents asOrderedCollection.