private
userSettingsModified
	"The table is affected by user settings."

	super userSettingsModified.
	self initializeCaseTable.
	self shownCases ifNotNil: [
		table rows: self shownCases]