initialize-release
initializeBasics
	"Load the db with the basic things we need to be fully operational.
	Currently it boils down to get the fundamental system users in place,
	some very basic default forms and to generate default settings."

	self initializeUsers; initializeForms; updateModelSettings