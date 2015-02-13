methods
baseNameFor: fileName
	"Return the name of given file without its extension, if it has any."

	| delim i leaf |
	self splitName: fileName to: [:path : fn |
		delim := $..
		i := fn findLast: [:c | c = delim].
		leaf := i = 0
			ifTrue: [fn]
			ifFalse: [fn copyFrom: 1 to: i - 1].
		path isEmpty ifTrue:[^leaf].
		^path, self slash, leaf
		]