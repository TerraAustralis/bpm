copying
clone
	"Make a clone to use for editing.
	This is the same as #copy, but we reuse the id."

	^self shallowCopy postCopy setId: id