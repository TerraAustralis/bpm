actions
save
	"The user saved. Create a transaction and commit it."

	editor save.
	self model modifyUser: editor formValue.
	self loadEditor