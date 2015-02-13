validation
isValidFor: aCase 
	"Return true if this criteria is valid.
	We do not call super because the default value may be
	the correct value to test for."

	^(aCase atField: target) = value

	"^(super isValidFor: aCase) and: [(aCase atField: target) = value ]"