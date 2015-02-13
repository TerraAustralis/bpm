plugins
plugins
	| plugins |
	plugins := OrderedCollection new.
	self session model globalPluginsDo: [ :plugin | plugins add: plugin ].
	^ plugins