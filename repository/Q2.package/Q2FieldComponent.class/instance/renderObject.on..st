object rendering
renderObject: anObject on: html 
	"Render anObject. This is a multi dispatch entry,
	override to call specific rendering methods.
	We start by dispatching on anObject."

	anObject
		ifNil: [html text: field nilText]
		ifNotNil: [anObject renderObjectIn: self on: html]