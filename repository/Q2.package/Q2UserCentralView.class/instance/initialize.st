initialize-release
initialize

	super initialize.
	description := 'Your personal case center in the system'.
	label := 'My view'.

	central := self currentUser userCentral.

	self initializeCasePanelViews.
	freetextFilter := Q2FreeTextFilter new.