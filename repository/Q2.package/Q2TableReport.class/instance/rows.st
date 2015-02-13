as yet unclassified
rows
	| r |
	currentRows ifNotNil: [^currentRows "cached value for this request"].
	self sortColumn 
		ifNil: [r := rows]
		ifNotNil: [
			r := self sortColumn sortRows: rows.
			r := (self isReversed ifTrue: [r reversed] ifFalse: [r])].
	batchedList items: r.
	^currentRows := batchedList batch