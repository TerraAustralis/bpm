html-forms
reset: text

	^self attributeAt: 'value' put: text;
		attributeAt: 'type' put: 'reset';
		tag: 'input'