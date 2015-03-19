private
booleanAt: var ifAbsent: block
	"Customized version for checkboxes."

	^(fields at: var ifAbsent: [^block value]) = 'on'