validation
isValidFor: aCase
	"Return true if this criteria is valid.
	At least one of my criteria must be met."

	^criteria anySatisfy: [:each | each isValidFor: aCase]