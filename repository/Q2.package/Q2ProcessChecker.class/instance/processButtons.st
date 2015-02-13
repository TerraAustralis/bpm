accessing
processButtons
	"return the process buttons hanging around in the world"

	^ World submorphs 
				select: [:each | each class == Q2ProcessButton].