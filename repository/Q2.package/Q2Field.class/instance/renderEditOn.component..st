rendering
renderEditOn: h component: fieldComponent
	"Subclasses should either implement this method or implement #renderEditControlOn:component:."

	fieldComponent isReadOnly
		ifTrue: [self renderViewOn: h component: fieldComponent]
		ifFalse: [fieldComponent renderControl: [:html | self renderEditControlOn: html component: fieldComponent]]