accessing
sizeString
	| sz |
	sz := self size.
	^sz ifNil: ['(not on disk)'] ifNotNil: [
		"sz < 2097152 ifTrue: ["
			(sz / 1024) rounded asString, ' KB'"]
			ifFalse: [
			(sz / 1048576) rounded asString, ' MB']"]