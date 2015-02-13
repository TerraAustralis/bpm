visiting
visitMagmaCollection: aMagmaCollection

	aMagmaCollection indexes do: [ :each |
		self announcer announce: (Q2NextMagmaCollectionIndex with: each) ].
	self visitCollection: aMagmaCollection.