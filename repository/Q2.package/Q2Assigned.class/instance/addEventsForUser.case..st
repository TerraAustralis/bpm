as yet unclassified
addEventsForUser: aUser case: aCase
	"We add an event for assigned to me."

	((Q2ModifiedCaseAssignedToMeEvent for: aCase) assigned: aUser) signal