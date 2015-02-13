iteration
threadedReverseDo: aBlock

	aBlock value: self.
	replies ifNotNil: [
		replies reverseDo: [:each | each threadedReverseDo: aBlock]]