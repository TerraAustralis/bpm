as yet unclassified
initialize
	"self initialize"
	TableForm := Q2StaticForm new.
	TableForm label: 'Form for showing all transactions as the history of the case'.
	(TableForm newPointInTime) label: 'Timestamp'; withSelector: #timestamp.
	(TableForm newText) label: 'User'; withSelector: #user.
	(TableForm newText) label: 'Description'; withSelector: #displayForHistory.