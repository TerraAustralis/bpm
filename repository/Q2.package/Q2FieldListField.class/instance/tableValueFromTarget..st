rendering
tableValueFromTarget: aTarget
	|items|
	items := aTarget perform: self selector.
	(items size = 0) ifTrue: [^'N/A'].
	(items size > 1) ifTrue: [^items size asString, ' items'].

	^field tableValueFromTarget: items anyOne