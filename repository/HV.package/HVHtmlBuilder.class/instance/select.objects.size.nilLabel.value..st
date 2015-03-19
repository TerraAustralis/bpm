html-forms
select: aName objects: objects size: size nilLabel: label value: default
	"Selects always have values that are integers from 1.
	If there is a value submitted we find the object at that
	position, otherwise we use the supplied default value."

	^self select: aName objects: objects values: nil size: size multiple: false nilLabel: label selector: nil value: default