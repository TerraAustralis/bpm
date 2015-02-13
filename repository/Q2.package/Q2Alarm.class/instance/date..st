as yet unclassified
date: aDate
	"Set the alarm date (or startingdate)"
	date := Date fromStream: aDate readStream usingFormat: #(3 2 1 $- 1 1).