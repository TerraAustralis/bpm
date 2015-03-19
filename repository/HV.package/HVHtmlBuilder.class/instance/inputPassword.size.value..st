html-forms
inputPassword: name size: size value: default 

	^self addHtmlInput: (HVHtmlInputPassword name: name value: (fields at: name ifAbsent:[default]) size: size)