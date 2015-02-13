serving
libraryAt: aLibraryName

	^ self instances at: aLibraryName ifAbsent: [ ^ nil ]