parent views
parentsDo: aBlock
	"Iterate over the parent views my parent first."

	aBlock value: parent.
	parent parentsDo: aBlock