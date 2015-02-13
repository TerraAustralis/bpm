as yet unclassified
adminEditForm
	"Special form for administration."

	^AdminEditForm ifNil: [
		AdminEditForm := super adminEditForm.
		AdminEditForm fields first readOnly: true.
		AdminEditForm fields removeAt: 2.
		AdminEditForm fields second readOnly: true.
		AdminEditForm fields third readOnly: true.
		AdminEditForm fields removeLast; removeLast; removeLast.
		AdminEditForm]