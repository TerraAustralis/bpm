rendering
renderContentOn: html
	"Delegate to the plugin but send this component along."

	^plugin renderOn: html component: self parent