as yet unclassified
initialize
	super initialize.
	Q2Log debug: (String streamContents: [ :stream |
		stream
			nextPutAll: self name;
			nextPut: Character space.
		self id printOn: stream ]).
	accessLevels := Dictionary new.
	categoriesForClass := Dictionary new.
	defaultLevel := Q2Permission none