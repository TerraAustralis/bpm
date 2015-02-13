accessing
filter: aFilter
	filter := (aFilter isString) ifTrue: [nil] ifFalse: [aFilter]