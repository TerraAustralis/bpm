*GraphViz
graphForCategoriesMatching: matchingString
	| graph edges |
	graph _ GraphViz new.

	graph beDirected.
	graph
		name: matchingString, ' class hierarchy';
		add: #graph with: {#overlap -> #scale. #concentrate -> #true. #ranksep -> 0.25};
		add: #node with: {#shape -> #box. #fontsize -> 10. #style -> #filled. #fillcolor -> #tomato. #height -> 0.25};
		add: #edge with: {#arrowsize -> 0.5}.
		
	edges _ Set new.
	(SystemOrganization categoriesMatching: (matchingString, '*')) do:
		[:cat |
	
		(SystemOrganization listAtCategoryNamed: cat) do:
			[:klass | | browser hierarchy |
			graph add: klass with: {#fillcolor -> #palegreen}.
			
			browser _ HierarchyBrowser new initHierarchyForClass: (Smalltalk at: klass).
			hierarchy _ (browser classList collect: [:each | each withBlanksTrimmed asSymbol]).
			hierarchy _ hierarchy first: (hierarchy indexOf: klass).
			
			1 to: hierarchy size - 1 do: [:i | edges add: (hierarchy at: i) -> (hierarchy at: i + 1)]]].

	edges do: [:each | graph add: each with: {#arrowtail -> #normal. #arrowhead -> #none}].
	
	graph add: #graph with: {#label -> matchingString. #fontsize -> 20}.
	
	^ graph