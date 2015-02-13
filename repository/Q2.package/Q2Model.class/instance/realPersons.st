users
realPersons

	| notInclude |
	self flag: #q2todo. "this is costly, perhaps we can use a reader/query?"
	notInclude := self systemUser person.
	^persons reject: [:each | each == notInclude]