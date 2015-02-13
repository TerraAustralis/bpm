actions
save
	"The user saved. Create a transaction and commit it."

	editor save.
	self model modifyCase: editor formValue.
	self answer