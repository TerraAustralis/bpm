rendering
renderObjectIn: anUIObject on: html
	"Render note. This is a double dispatch method,"

	^anUIObject renderNote: self on: html