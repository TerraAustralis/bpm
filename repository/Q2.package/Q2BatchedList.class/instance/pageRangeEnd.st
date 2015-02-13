accessing-calculated
pageRangeEnd
	"If we do not know how many pages there are we can not show them."

	^ maxPages min: self currentPage + 9