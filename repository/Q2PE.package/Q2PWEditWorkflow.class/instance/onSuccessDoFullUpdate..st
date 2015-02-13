as yet unclassified
onSuccessDoFullUpdate: updater
	
	self controller isComplete ifTrue: [
		self onListChangedDoFullUpdate: updater
	]