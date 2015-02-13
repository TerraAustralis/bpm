database
recreateTestDatabase
	"Delete, create, initialize and load the Magma database with sample test data.
	This is used for unit tests and possibly demo purposes."

	"Q2Gjallar recreateTestDatabase"

	Q2Model initializeDatabase; bootStrapDatabase; loadSampleData