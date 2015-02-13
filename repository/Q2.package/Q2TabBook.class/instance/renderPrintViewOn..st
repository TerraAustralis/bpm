as yet unclassified
renderPrintViewOn: html
	components do: [ :c | 
		"html heading with: (self labelFor: c value)."
		html heading with: [ html break].
		c value renderPrintViewOn: html
	].