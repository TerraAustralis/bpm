rendering
updateContentOn: html

	"update my content"
	tabBook selectedComponent  = stages ifTrue: [ stages editor listPopulateStages ].
	tabBook selectedComponent = transitions  ifTrue: [ transitions editor listPopulateTransitions ].
 
	"html text: 'Workflow:'. html text: tabBook selection."	

	html div id: (self messageId); style: 'color : red'; 
		with: [ 
			"self updateMessageOn: html."
		].

	html break.
	
	html form id: (self formId); with: [ 
		html render: tabBook.
		self renderButtonsOn: html
	].