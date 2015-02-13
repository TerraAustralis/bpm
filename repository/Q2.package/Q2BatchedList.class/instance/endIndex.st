rendering
endIndex
	^(currentPage - 1) * batchSize + (batchSize min: (pages at: currentPage) size)