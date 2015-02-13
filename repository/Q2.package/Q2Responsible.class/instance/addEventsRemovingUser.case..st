as yet unclassified
addEventsRemovingUser: aUser case: aCase

	((Q2ModifiedCaseResponsibleFromMeEvent for: aCase) oldResponsible: aUser) signal