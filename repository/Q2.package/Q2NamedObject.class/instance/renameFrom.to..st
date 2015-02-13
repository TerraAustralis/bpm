renaming
renameFrom: originalName to: newName
	"Rename this object, but only if old name matches."

	name = originalName ifTrue: [self renameTo: newName]