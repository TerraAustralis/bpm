as yet unclassified
removePlugin: aPlugin
	self commit: [
		self plugins remove: aPlugin.
		aPlugin removedFromRegistry: owner
	]