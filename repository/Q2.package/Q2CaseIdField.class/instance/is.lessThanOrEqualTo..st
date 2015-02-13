as yet unclassified
is: a lessThanOrEqualTo: b
	| preA preB numA numB |
	preA := a copyWithoutAll: '0123456789'.
	preB := b copyWithoutAll: '0123456789'.

	(preA < preB) ifTrue: [^true].
	(preA > preB) ifTrue: [^false].

	"a and b have the same prefixes"
	numA := (a intersection: '0123456789') asInteger.
	numB := (b intersection: '0123456789') asInteger.
	^numA<=numB