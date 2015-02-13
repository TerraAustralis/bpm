database
loadSimple
	"Load the simple setup as if we did it in the admin console."

	Q2Session sessionModelDo: [ :sess :model | model modifyGlobalDefinitionTo: 'self loadSimple']