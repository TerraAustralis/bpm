fetching
fetchNextPage
	"Collect enough objects from the reader to populate a new page
	and return it. The last requested page may contain fewer
	objects than batchSize."

	| page candidate |
	page := OrderedCollection new: batchSize.
	[ position := position +1.  position <= readerSize and: [ page size < batchSize ] ] whileTrue: [
		candidate := filterBlock value: (reader at: position).
		"candidate _ reader at: position ifOutOfBounds: [maxPages _ pages size + 1. ^page]."
		candidate ifNotNil: [
			page add: candidate.
	 ].
	].
	position := position - 1.
	maxPages := maxPages max: pages size + 1.
	^ page.