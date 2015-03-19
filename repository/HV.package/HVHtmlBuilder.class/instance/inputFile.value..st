html-forms
inputFile: name value: default 
	"Add an input file control so that a file can be chosen
	and included with the form. The form must be a multipart
	form - see #postFormMultiPart."

	^self addHtmlInput: (
		(HVHtmlInputFile named: name attributes: self attributes)
			value: (fields at: name ifAbsent:[default]))