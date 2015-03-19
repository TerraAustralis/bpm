html-forms
submit: name value: text

	| val |
	val := false.
	self ifSubmit: [
		val := (fields includesKey: name)
			ifTrue:[ (fields at: name) = text ]
			ifFalse: [ false ]].
	^self addHtmlInput: (HVHtmlInputSubmit name: name value: text pressed: val)