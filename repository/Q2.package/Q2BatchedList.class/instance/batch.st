accessing-calculated
batch
	"Return the current batch (or page) for viewing.
	We cache the pages."

	[pages size < currentPage] whileTrue: [
		pages add: self fetchNextPage].
	^pages at: currentPage