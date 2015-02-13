database
loadTortureData
	"Load the sample test data, but with lots of cases."

	Q2Session sessionModelDo: [ :sess :model | 
		model 	modifyGlobalDefinitionTo: 'self loadSampleData';
				loadTortureCases ]