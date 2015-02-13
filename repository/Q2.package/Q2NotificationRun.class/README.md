I represent an action in the system that reuslts in one or more events that shall be checked against the user's subscriptions. When I am created, all Q2Events shall be added. Then, during 'run', the events are checked for the subscriptions being trigged.
The trigged subscriptions are collected for each user. At the end if the 'run' phase, an email is created for each user with trigged subscriptions.

Transactions will store events in the current session in their postMaster method. Some events cannot be generated for a specific transaction, e.g. when the responsible for a case is changed. These events will be added from within the domain code. This will be included within a transaction "apply" or "do".
For every "atomic" user interaction an instance of me will be created for the collection of events (when running on the master). When a mirror is syncronized, one NotificationRun will be created for the entire syncronization.
I will take the events stored in the session, and collect notifications for the users. Either this will generate an email for a user, or the notification will be collected for a cyclic digest.

============================================
  Transactions and generated events
============================================
Q2CreateCaseTxn		->	{Q2CreatedCaseEvent}
Q2ModifyCaseTxn	->	{Q2ModifiedCaseEvent, 
						Q2ModifiedRelatedCaseEvent}
Q2CaseTransitionTxn	-> 	{Q2StageTransitionEvent, 
						Q2StageTransitionForRelatedCaseEvent}
Q2CaseNoteTxn 		->	{Q2NoteAddedEvent} 
Q2Case>>responsible:	->	{Q2ModifiedCaseResponsibleEvent}
Q2Model>>addUser 	->	{Q2UserAddedEvent}
Q2Case>>usersAndRoles ->	{Q2ModifiedCaseRolesEvent}

