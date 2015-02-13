database
loadDemo3
	"Load the demo setup as if we did it in the admin console."

	Q2Session sessionModelDo: [ :session :model | model modifyGlobalDefinitionTo: 'self loadDemo3']