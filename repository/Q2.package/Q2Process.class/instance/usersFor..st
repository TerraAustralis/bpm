events
usersFor: anEvent
	"Get the collection of subscriptions for this event, and collect all users."

	^(self eventTypes at: anEvent ifAbsent: [#()]) collect: [:subs | subs user]