html-forms
inputCheckbox: name value: default
	"Add a checkbox named <name> with default value <default>.
	The value should be false or true. If the current request has
	posted this field then the value is picked from there."

	| val |
	val := default.
	self ifSubmit: [
		val := (fields includesKey: name)
			ifTrue:[ (fields at: name) = 'on' ]
			ifFalse: [ false ]].
	^self addHtmlInput: (
		(HVHtmlInputCheckbox named: name attributes: self attributes)
			value: val)