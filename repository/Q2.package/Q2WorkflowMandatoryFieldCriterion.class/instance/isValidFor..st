validation
isValidFor: aCase 
	"Return true if this criteria is valid.
	We check that the case has an entered value for the field."

	^aCase hasValueForField: target