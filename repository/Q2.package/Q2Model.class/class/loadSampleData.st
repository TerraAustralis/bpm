database
loadSampleData
	"Load the sample test data as if we did it in the admin console."

	Q2Session sessionModelDo: [ :sess :model |
		 model
			modifyGlobalDefinitionTo: 'self loadSampleData';
			loadCases]