as yet unclassified
rows
	| r |
	self sortColumn 
		ifNil: [r := rows]
		ifNotNil: [
			r := self sortColumn sortRows: rows.
			r := (self isReversed ifTrue: [r reversed] ifFalse: [r])].
	self batchedList items: r.
	^currentRows := batchedList batch