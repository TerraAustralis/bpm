database
loadDemoNumber: num
	"Load the given (1, 2, 3) demo setup as if we did it in the admin console."

	Q2Session sessionModelDo: [ :session :model |
		model modifyGlobalDefinitionTo: 'self loadDemo', num asString]