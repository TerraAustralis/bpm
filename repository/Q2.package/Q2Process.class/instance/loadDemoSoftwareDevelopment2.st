sample
loadDemoSoftwareDevelopment2

	self settingAt: #allowNobodyResponsible put: true.
	self importCategories: self model definedCategories.

	self newWorkflow.
	workflow loadDemoSoftwareDevelopment.
	self loadDefaultPermissions.