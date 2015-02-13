testing
isOnLastPage
	"We are only on the last page if we know how many pages there are."

	^ (position = readerSize) and: [self currentPage = maxPages]