tables
tableHeadings: aCollection
	self tableRow: [aCollection do: [:ea | self tableHeading: ea]]