read and write
valueOf: field
	"Return value from value Dictionary, or if missing,
	extract the unchanged one from the target
	and tuck it away in the originals Dictionary for later comparison."

	self assert: [ field isKindOf: Q2Field ].
	^value at: field ifAbsent: [
		originalValues at: field put: (self targetGet: field)]