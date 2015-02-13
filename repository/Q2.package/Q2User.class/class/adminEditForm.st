forms
adminEditForm
	"Special form for administration."

	^AdminEditForm ifNil: [
		AdminEditForm := super adminEditForm.
		AdminEditForm fields third readOnly: true.
		AdminEditForm fields fourth readOnly: true.
		(AdminEditForm newText) small; label: 'LDAP id'; withSelector: #ldapId; nilForDefault: true.
		(AdminEditForm newBoolean) label: 'Reporter only'; withSelector: #reporterOnly.
		(AdminEditForm newBoolean) label: 'Administrator'; withSelector: #isAdmin.
		AdminEditForm]