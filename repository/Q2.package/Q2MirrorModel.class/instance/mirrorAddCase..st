mirrors-obsolate
mirrorAddCase: aCase
	"Add it if missing."

	(cases includes: aCase) ifFalse: [cases add: aCase]