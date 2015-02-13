as yet unclassified
doWithModel: aBlock
	| snapshotSession |
	snapshotSession := (MagmaLocalLocation path: self snapshotDirectory) newSession.
	snapshotSession connectAs: 'comparsion tester'.
	aBlock value: (snapshotSession root at: 'Q2Model').
	snapshotSession closeRepository.