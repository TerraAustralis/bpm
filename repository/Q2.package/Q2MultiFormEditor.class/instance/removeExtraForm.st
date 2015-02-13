actions
removeExtraForm
  "Remove the formValue for the given form."

  | val visitor |
  val := formValue removeValueWithForm: toRemove.	"	formValue target removeForm: val form."
  visitor := editors detect: [ :v | v model form = val form ].
  editors remove: visitor.
  tabBook remove: visitor.
  toRemove := nil