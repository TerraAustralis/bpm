databases
compareDatabaseWith: aDirectoryName
	| snapshotSession snapshotModel result |
	snapshotSession := (MagmaLocalLocation path: (self snapshotDirectory, aDirectoryName) pathName) newSession.
	snapshotSession connectAs: 'serialization tester'.
	snapshotModel := snapshotSession root at: 'Q2Model'.

	Q2Session sessionModelDo: [:sess  :model | 

		result := (Q2ObjectComparator 
			with: model
			with: snapshotModel) compare. 

		self assert: result "DON'T FORGET TO CLOSE THE SNAPSHOTSESSION'S REPOSITORY"].
	snapshotSession closeRepository.
	^result