as yet unclassified
adminEditForm
	"Special form for administration."

	^AdminEditForm ifNil: [
		AdminEditForm := self editForm veryDeepCopy.
		AdminEditForm fields do: [:f | f readOnly: false].
		AdminEditForm]