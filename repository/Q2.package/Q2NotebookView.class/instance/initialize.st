render
initialize
	super initialize.
	description := 'View notes on case'.
	label := 'Notes'.
	editors := Dictionary new.

	newFirst := self currentUserSettings showNewNotesFirst.
	showThreaded := self currentUser settings showNotesThreaded