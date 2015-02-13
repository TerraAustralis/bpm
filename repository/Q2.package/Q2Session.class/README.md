A Q2Session is the Seaside session class we use and it mainly adds a corresponding MagmaSession. Support is also being added for GemStone, and the database session is abstracted. Some remains of explicit references to Magma will be kepts for a while.

To do something with the Q2 database you typically do:

	Q2Session sessionDo: [ :session |  "if you want to configure the session before using it"
		model _ Q2Session current model.
		...]

	or:

	Q2Session sessionModelDo: [ :session :model | "if you want the model right away"
		 
		...]
	

If you run this in a workspace it will allocate a Q2SessionWithoutSeaside instance and a MagmaSession from the Q2ConnectionPool etc. If you run "Q2Session useMock: true" before the above then you will instead (from then on) get a Q2MockSession which in turn uses a Q2MockMagmaSession so no db access is made. This is very useful in unit tests, see Q2ModelTestCase>>setUp. To restore the previous state in #tearDown methods use Q2Session useMockNoMore.

If there are multiple gjallar applications configured in seaside, you can target the database of a specific instance via. 'Q2Session use: #Gjallar', 'Q2Session use: #Backup' for example. Q2Session default, returns 'Q2Session use: #Gjallar' by default. Note: this targetting is made on a per process basis. Once selected for that process Q2Session current will refer to the chosen gjallar instance.

-
Q2Session uses 'ProcessLocalVariables' (instead of DynamicBindings or Notifications) to allow you to obtain the current context.

Q2Object session - gives the current session.
Q2Object context - gives the current context, which is the current session or the txnInProgress.

Instead of Q2CurrentUser signal, you can do aQ2Object context user.







