actions
recentlyViewedCasesExcept: aTestBlock
	"Return a filtered ordered collection of recently viewed cases."

	^casesSection children
		select: [:comp | comp isCaseComponent and: [aTestBlock value: comp]]
		thenCollect: [:caseComp | caseComp case]