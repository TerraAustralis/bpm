loading
loadNow
	"Load the object with updates if we have a loader."

	loader notNil ifTrue: [loader load: self]