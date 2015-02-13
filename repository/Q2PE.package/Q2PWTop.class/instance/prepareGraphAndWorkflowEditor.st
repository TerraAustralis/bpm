as yet unclassified
prepareGraphAndWorkflowEditor

	self process ifNil: [ ^  self ].
		 				 
	workflowGraphComponent := graphs at: self process ifAbsentPut: [ Q2PWViewGraph parent: self  ].	 
	workflowEditorComponent := editors at: self process ifAbsentPut: [ Q2PWEditWorkflow parent: self  ].	 

 	controller ui: workflowEditorComponent.