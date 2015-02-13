as yet unclassified
addPlugin: aPlugin
	self plugins add: aPlugin.
	aPlugin addedToRegistry: owner.