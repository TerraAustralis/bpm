accessing
transitionLines
	"return the transition lines hanging around in the world"

	^ World submorphs 
				select: [:each | each class == Q2TransitionLine ].