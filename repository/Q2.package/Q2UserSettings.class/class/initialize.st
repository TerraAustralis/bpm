class initialization
initialize

	"self initialize"

	self initializeForms.
	EditForm := Q2StaticForm named: 'Tool'.
	EditForm label: 'Tool'.
	EditForm newBoolean label: 'Show introduction texts'; withSelector: #showIntroTexts; description: 'Optionally show some texts explaining user interface components.'.
	EditForm newInteger label: 'Max number of cases in tables'; withSelector: #maxCasesInTable; xsmall; maxLength: 5; defaultValue: 10; nilForDefault: true; emptyForDefault: true; description: 'Limits how many cases are shown at a time.'.
	EditForm newInteger label: 'Max number of recent cases shown'; withSelector: #maxRecentCases; xsmall; maxLength: 5; description: 'Limits how many cases are shown in the list to the left'.
	EditForm newBoolean label: 'Show edit mode switch'; withSelector: #showEditMode; description: 'Some components have an edit mode for configuration.'.
	EditForm newBoolean label: 'Show tooltips'; withSelector: #showToolTips; description: 'Show a floating one line description when mouse is pointed at fields and buttons.'.
	EditForm newBoolean label: 'Show integrated help'; withSelector: #showIntegratedHelp; description: 'Include integrated help in the user interfaces.'.
	EditForm newBoolean label: 'Show notes threaded'; withSelector: #showNotesThreaded; description: 'Shows notes in a threaded fashion instead of flat chronologically.'.
	EditForm newBoolean label: 'Show new notes on top'; withSelector: #showNewNotesFirst; description: 'Show notes sorted newest first.'.
	EditForm newBoolean label: 'Show notes view options'; withSelector: #showNotesOptions; description: 'Shows options for the notes view.'.
	EditForm newText label: 'Date and time format'; withSelector: #formatDateAndTime; description: 'Define how you want the date and time to be displayed.'.
	EditForm newSelection label: 'Time zone'; withSelector: #timeZone; description: 'The time zone to use when showing times.'.
"	Q2EditForm newBoolean label: 'Show linked weaving option'; withSelector: #showLinkedWeavingOption; description: 'Shows the option for weaving notes of linked cases into the notes view.'."
	EditForm newBoolean label: 'Digested subscription report'; withSelector: #digestSubscriptions; description: 'Do not send mail for every triggered subscription. Collect them and send an email periodically.'.
	EditForm newInteger label: 'Minimum number of hours between each email'; withSelector: #digestTime; description: 'How many hours do you want to hold your emails? Allowed values 1-48'.