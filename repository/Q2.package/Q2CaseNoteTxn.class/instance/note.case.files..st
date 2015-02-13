initialize-release
note: aNote case: aCase files: aList

	case := aCase.
	note := aNote.
	files := aList.
	
	"Here we update the created time to the time the note is actually saved."
	aNote created: Q2TimeStamp now.