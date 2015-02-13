database
recreateSimpleDatabase
	"Delete, create, initialize and load the Magma
	database with the smallest simple setup.
	This is intended as the out-of-the-box-setup."

	"Q2Gjallar recreateSimpleDatabase"

	Q2Model initializeDatabase; bootStrapDatabase; loadSimple.