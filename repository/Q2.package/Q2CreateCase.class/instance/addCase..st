actions
addCase: aFormValue
	"The user submitted the creation form, if aFormValue is nil
	the form was cancelled. Create a transaction and commit it."

	aFormValue ifNotNil: [
		self model createCase: aFormValue target formValue: aFormValue].
	self inform: 'Created case ', aFormValue target name, ' in process ', aFormValue target processName, '.'