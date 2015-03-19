html-forms
inputText: name size: size value: default 

	^self addHtmlInput: (HVHtmlInputText name: name value: (fields at: name ifAbsent:[default]) size: size)