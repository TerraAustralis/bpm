database
recreateDemoDatabase: num
	"Delete, create, initialize and load the Magma database with given demo (1, 2 , 3).
	This is used for demo purposes. See Q2Model>>loadDemoX methods."

	"Q2Gjallar recreateDemoDatabase: 1"

	Q2Model initializeDatabase; bootStrapDatabase; loadDemoNumber: num