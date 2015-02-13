as yet unclassified
populate: table from: source
  
	| criteria |
	
	source selected isStage 

	ifTrue: [ 
		criteria := source selected enterCriteria , source selected exitCriteria
	].

	source selected isTransition
	ifTrue: [
		criteria := source selected criteria
	].

	table rows: criteria