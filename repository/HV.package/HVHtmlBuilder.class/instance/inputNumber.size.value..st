html-forms
inputNumber: name size: size value: default 
	"Add a number field named <name> with default value <default>
	and length of field to be <size>.
	The value should be a Number. If the current request has
	posted this field then the value is picked from there."

	^self addHtmlInput: (HVHtmlInputNumber name: name value:
		(fields at: name ifAbsent:[default ifNil: [0]]) size: size)