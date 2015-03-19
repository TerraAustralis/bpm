entries
entryFor: urlStream
	"Find the child matching the relative url."

	| next found |
	next := urlStream next.
	next ifNil: [^self].
	found := self children detect: [:c | c name = next] ifNone: [nil].
	found ifNil: [children isEmptyOrNil ifTrue: [^self]ifFalse: [^self]].
	^found entryFor: urlStream