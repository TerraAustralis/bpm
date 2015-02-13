database
initializeDatabase
	"Delete, create and initialize the database.
	This can be executed in a workspace to make sure
	we got a clean database. The database is then totally empty.
	Basic bootStrap data is added using bootStrapDatabase and
	additional testdata can then be added using #loadSampleData or similar.
	We can not use sessionDo: since there are no users yet."

	"Q2Model initializeDatabase"

	Q2Session releaseCurrent.	 "just making sure"

	"First step is to delete database including files and recreate an empty one.
	These things are done through the Magma connection pool class for Q2."
	Q2Session current deleteDatabase; createDatabase.

	"Also clear out all free text indices."
	Q2SwishEWrapper clearIndexDirectory.

	"Next we allocate a Q2 session and create the basic model.
	We can't use sessionDo: (which the class side #commit: does)
	until there is a model with a system user in it."
	Q2Session current commit: [self initializeInDBSession: Q2Session current dbSession].

	Q2Session releaseCurrent