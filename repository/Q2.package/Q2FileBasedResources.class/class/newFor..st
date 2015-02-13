instance creation
newFor: dir
	 
	self allSubclassesDo: [ :sc |
		(sc libraryAt: dir) ifNotNilDo: [ :lib | ^ lib ]
	].

	^ Q2FileBasedResources basicNew 
		setLibraryName: dir; 
		initialize;
		yourself