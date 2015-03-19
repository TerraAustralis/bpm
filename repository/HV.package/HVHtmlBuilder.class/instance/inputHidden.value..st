html-forms
inputHidden: var value: default 
	"Add a hidden field named <name> with default value <default>.
	The value should be a String. If the current request has
	posted this field then the value is picked from there."

	^self addHtmlInput: (
		(HVHtmlInputHidden named: var attributes: self attributes)
			value: (fields at: var ifAbsent:[default]))