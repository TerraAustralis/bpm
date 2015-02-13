filters
removeFilter: aFilter

	self model removeObjectById: aFilter.
	filters removeAllSuchThat: [:f | f id = aFilter id].
	^aFilter