read and write
valueAt: field put: val
	"Set value in value Dictionary."
	self assert: [ field isKindOf: Q2Field ].
	value at: field put: val