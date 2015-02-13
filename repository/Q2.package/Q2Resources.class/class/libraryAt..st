as yet unclassified
libraryAt: aLibraryName

	^ self libraryName = aLibraryName
		ifTrue: [ self default ] 
		ifFalse: [ nil ]