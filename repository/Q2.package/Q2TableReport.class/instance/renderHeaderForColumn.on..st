as yet unclassified
renderHeaderForColumn: aColumn on: html
	| batchedListCanSort |
	batchedListCanSort := batchedList ifNil: [true] ifNotNil: [batchedList canSort].
	html tableHeading class: 'reportHeading'; with: [
		(batchedListCanSort and: [aColumn canSort])
			ifTrue: [
				html anchor callback: [self sortColumn: aColumn]; with: aColumn title.
				aColumn = self sortColumn ifTrue: [
					self isReversed 
						ifTrue: [html html: '&uarr;']
						ifFalse: [html html: '&darr;']]]
			ifFalse: [
				html text: aColumn title].
	]