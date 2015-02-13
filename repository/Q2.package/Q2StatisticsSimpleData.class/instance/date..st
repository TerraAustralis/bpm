as yet unclassified
date: aDate
	"Note, to prevent misuse, you allowed to initialize date value only once"
	date ifNotNil: [ self error: 'date is already set' ].
	date := aDate.