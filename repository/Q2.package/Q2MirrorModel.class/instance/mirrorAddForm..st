mirrors-obsolate
mirrorAddForm: aForm
	"Add it if missing."

	(forms includes: aForm) ifFalse: [forms add: aForm]