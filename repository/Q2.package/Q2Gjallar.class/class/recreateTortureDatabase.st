database
recreateTortureDatabase
	"Delete, create, initialize and load the Magma database with lots of test data.
	This is used for tests and possibly demo purposes."

	"Q2Gjallar recreateTortureDatabase"

	Q2Model initializeDatabase; bootStrapDatabase; loadTortureData