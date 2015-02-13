mirrors
postMirrorCopyIn: aModel
	"Return a suitable copy for me to keep in the actual mirror
	for information purposes."

	"reconnect to copy of user in the mirror model"
	id := id copy.
	prefix := prefix copy.
	transactions := transactions veryDeepCopy.
	owner := aModel findObjectById: owner id.
	filters := nil.
	processes := nil