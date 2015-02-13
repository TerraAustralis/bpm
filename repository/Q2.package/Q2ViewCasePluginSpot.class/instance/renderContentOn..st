as yet unclassified
renderContentOn: html
	"Delegate to the plugin but send this component along."

	^plugin renderOnViewCase: html component: self