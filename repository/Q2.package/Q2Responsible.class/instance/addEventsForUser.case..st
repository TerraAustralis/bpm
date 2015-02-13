as yet unclassified
addEventsForUser: aUser case: aCase
	"We add three events."

	(Q2ModifiedCaseResponsibleEvent for: aCase) signal.
	(Q2ModifiedCaseResponsibleToMeEvent for: aCase) signal