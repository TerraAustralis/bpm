set up
setUp
	"Allocate a session for the running Process and recreate the database from scratch.
	Creates new initialized model and adds 30 cases to play with."

	| time |
	Q2Log info: 'Recreating Q2Model with sample data in Magma...'.
	time := Time millisecondsToRun: [
		Q2Gjallar recreateTestDatabase.
		model := Q2Session current model].
	Q2Log info: 'done. Took: ', time asString, ' ms'