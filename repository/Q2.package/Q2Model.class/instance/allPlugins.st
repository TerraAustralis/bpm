plugins
allPlugins
	| plugIns |
	plugIns := self pluginRegistry plugins copy.
	self processes do: [:process |
		plugIns addAll: process pluginRegistry plugins].
	^plugIns