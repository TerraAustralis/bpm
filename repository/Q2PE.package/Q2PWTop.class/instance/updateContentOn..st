as yet unclassified
updateContentOn: html

	html render: processSelectorComponent.

	html horizontalRule.
	
	self prepareGraphAndWorkflowEditor.

	html div id:'graphAndworkflowEditor'; "should not be necessary"

	with: [

		html render: workflowGraphComponent.

		html heading level: 1; with: 'Process: ', self process displayString.

		html render: workflowEditorComponent.

	]