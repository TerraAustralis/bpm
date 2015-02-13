rendering
renderObject: anObject on: html
	"Render anObject. This is a multi dispatch entry,
	override to call specific rendering methods.
	Different components can override this for specific behavior.
	By default we start by dispatching on anObject."

	^anObject renderObjectIn: self on: html