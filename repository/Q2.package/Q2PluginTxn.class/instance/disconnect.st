as yet unclassified
disconnect
	super disconnect.
	plugin := plugin id copy.
	" nil - for model plugin, id - for process plugin "
	registryOwner := (registryOwner = self model) ifTrue: [ nil ] ifFalse: [ registryOwner id copy]