iteration
threadedDo: aBlock

	aBlock value: self.
	replies ifNotNil: [
		replies do: [:each | each threadedDo: aBlock]]