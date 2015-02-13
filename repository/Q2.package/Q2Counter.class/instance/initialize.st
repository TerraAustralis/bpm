initialize-release
initialize
	"RepositoryController in server has to implement #initializeCounter:."

	super initialize.
	Q2Session current dbSession serverPerform: #q2CounterInitialize: withArguments: {id yourself}