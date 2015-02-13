*q2
renderObjectIn: anUIObject on: html
	"Render anObject. This is a double dispatch method,
	override to call specific rendering methods.
	By default we ask the component for the default method."

	^anUIObject renderDefault: self on: html