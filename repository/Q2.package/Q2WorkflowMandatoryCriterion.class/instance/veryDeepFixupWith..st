private
veryDeepFixupWith: copier 
	"It is never our job to copy target,
	but if it was copied we need to refer to the new copy."

	super veryDeepFixupWith: copier.
	target := copier references at: target ifAbsent: [target]