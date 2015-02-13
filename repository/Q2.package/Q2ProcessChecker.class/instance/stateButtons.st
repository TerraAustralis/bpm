accessing
stateButtons
	"return the state buttons hanging around in the world"

	^ World submorphs 
				select: [:each | each class == Q2StateButton].