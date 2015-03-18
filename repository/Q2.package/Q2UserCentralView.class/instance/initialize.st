initialize-release
initialize
  super initialize.
  description := 'Your personal view of the Nextround system'.
  label := 'My Dashboard'.
  central := self currentUser userCentral.
  self initializeCasePanelViews.
  freetextFilter := Q2FreeTextFilter new