render
initialize
	super initialize.
	description := 'Show case history for a case'.
	label := 'History'.
	table := self buildHistoryTable.