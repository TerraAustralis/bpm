as yet unclassified
renderContentOn: html

	super renderContentOn: html.
	batchedList maxPages > 1 ifTrue: [ batchedList renderOn: html].
	currentRows := nil.
	
	(self editor respondsTo: #renderTabFooterOn:)
		ifTrue:[ self editor renderTabFooterOn: html ].