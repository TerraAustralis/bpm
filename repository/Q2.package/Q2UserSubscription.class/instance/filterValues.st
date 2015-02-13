accessing
filterValues
	" If user is nil, this is a temporary object created in the GUI that has not yet been saved"
	^(OrderedCollection with: '<Empty filter>')
		addAll: (user ifNotNil: [user availableFilters] ifNil: [self session currentUser availableFilters]);yourself